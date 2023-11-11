class CompaniesController < ApplicationController
  before_action :set_company, only: %i[show edit update destroy delete_logo]

  # GET /companies or /companies.json
  def index
    @companies = Company.all
  end

  # GET /companies/1 or /companies/1.json
  def show; end

  # GET /companies/new
  def new
    @company = Company.new
  end

  # GET /companies/1/edit
  def edit; end

  # POST /companies or /companies.json
  def create
    @company = Company.new(company_params)

    respond_to do |format|
      if @company.save
        format.html { redirect_to company_path(@company), notice: 'Empresa criada com sucesso!' }
        format.json { render :show, status: :created, location: @company }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @company.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /companies/1 or /companies/1.json
  def update
    respond_to do |format|
      if @company.update(company_params)
        format.html { redirect_to company_path(@company), notice: 'Empresa atualizada com sucesso!' }
        format.json { render :show, status: :ok, location: @company }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @company.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /companies/1 or /companies/1.json
  def destroy
    @company.destroy

    respond_to do |format|
      format.html { redirect_to companies_path, notice: 'Empresa excluída com sucesso!' }
      format.json { head :no_content }
    end
  end

  def delete_logo
    @company.logo.purge
    if @company.logo.attached?
      redirect_to @company, notice: 'Não foi possível excluir a logo, tente novamente!'
    else
      redirect_to @company, notice: 'Logo excluída com sucesso!'
    end
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_company
    @company = Company.find(params[:id])
  end

  # Only allow a list of trusted parameters through.
  def company_params
    params.require(:company).permit(:logo, :name_fantasy, :corporate_reason, :cnpj, :email, :zip_code, :address,
                                    :address_number, :complement, :state, :city, :neighbourhood, :country,
                                    :mobile01, :mobile02, :phone01, :phone02, :active)
  end
end
