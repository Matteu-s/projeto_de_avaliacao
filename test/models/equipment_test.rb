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
require "test_helper"

class EquipmentTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
