# == Schema Information
#
# Table name: companies
#
#  id               :uuid             not null, primary key
#  name_fantasy     :string
#  corporate_reason :string
#  cnpj             :string
#  email            :string
#  zip_code         :string
#  address          :string
#  address_number   :string
#  complement       :string
#  state            :string
#  city             :string
#  neighborhood    :string
#  mobile01         :string
#  mobile02         :string
#  phone01          :string
#  phone02          :string
#  active           :boolean          default(TRUE)
#  created_at       :datetime         not null
#  updated_at       :datetime         not null
#
require "test_helper"

class CompanyTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
