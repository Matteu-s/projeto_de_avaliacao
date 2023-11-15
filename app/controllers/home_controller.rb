class HomeController < ApplicationController
  include ApplicationHelper

  def index
    @companies = Company.where(active: true).order(:corporate_reason).map do |company|
      [name_cnpj(company), company.id]
    end
    load_users
    load_companies
  end

  def load_data
    equipments = Equipment.where(company_id: params[:id])
    @count_equipments_available = equipments.available.count
    @count_equipments_unavailable = equipments.unavailable.count
    @count_equipments_maintenance = equipments.maintenance.count
    @equipment_more_expensive = equipments.max_by(&:cost)
    @equipment_less_expensive = equipments.min_by(&:cost)
    @average_cost = equipments.average('cost::decimal')

    respond_to do |format|
      format.json do
        render json: {
          count_equipments_available: @count_equipments_available,
          count_equipments_unavailable: @count_equipments_unavailable,
          count_equipments_maintenance: @count_equipments_maintenance,
          equipment_more_expensive: [{ name: @equipment_more_expensive.name, cost: @equipment_more_expensive.cost }],
          equipment_less_expensive: [{ name: @equipment_less_expensive.name, cost: @equipment_less_expensive.cost }],
          average_cost: @average_cost
        }
      end
    end
  end

  private

  def load_users
    users = User.all
    @users_active = users.where(active: true).count
    @users_inactive = users.where(active: false).count
    @five_last_users = users.last(5)
    @users_with_most_access = users.order(sign_in_count: :desc).limit(5)
  end

  def load_companies
    companies = Company.all
    @companies_active = companies.where(active: true).count
    @companies_inactive = companies.where(active: false).count
    @five_last_companies = companies.last(5)
    @with_most_equipments = companies.where(active: true).select('companies.id, companies.corporate_reason, companies.cnpj,
                                                              COUNT(equipments.id) AS equipments_count')
                                     .joins(:equipments)
                                     .group('companies.id')
                                     .order('equipments_count DESC')
                                     .limit(5)
  end
end
