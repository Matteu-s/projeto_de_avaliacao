# == Schema Information
#
# Table name: users
#
#  id                     :uuid             not null, primary key
#  email                  :string           default(""), not null
#  encrypted_password     :string           default(""), not null
#  reset_password_token   :string
#  reset_password_sent_at :datetime
#  remember_created_at    :datetime
#  name                   :string
#  cpf                    :string
#  rg                     :string
#  dob                    :date
#  zip_code               :string
#  address                :string
#  address_number         :string
#  complement             :string
#  state                  :string
#  city                   :string
#  neighborhood          :string
#  mobile01               :string
#  mobile02               :string
#  phone01                :string
#  phone02                :string
#  active                 :boolean          default(TRUE)
#  created_at             :datetime         not null
#  updated_at             :datetime         not null
#
require "test_helper"

class UserTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
