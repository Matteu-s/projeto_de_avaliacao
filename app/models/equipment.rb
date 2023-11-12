# == Schema Information
#
# Table name: equipments
#
#  id                        :bigint           not null, primary key
#  name                      :string
#  serial_number             :string
#  date_of_acquisition       :datetime
#  cost                      :string
#  state                     :integer
#  last_maintenance          :datetime
#  current_responsible       :string
#  delivery_date_responsible :datetime
#  company_id                :uuid             not null
#  created_at                :datetime         not null
#  updated_at                :datetime         not null
#
class Equipment < ApplicationRecord
  belongs_to :company

  enum state: {
    available: 0,
    unavailable: 1,
    maintenance: 2
  }
end
