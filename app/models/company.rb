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
#  neighbourhood    :string
#  country          :string
#  mobile01         :string
#  mobile02         :string
#  phone01          :string
#  phone02          :string
#  active           :boolean          default(TRUE)
#  created_at       :datetime         not null
#  updated_at       :datetime         not null
#
class Company < ApplicationRecord
  has_many :equipments, dependent: :destroy
  has_one_attached :logo

  validate :logo_size

  private

  def logo_size
    return unless logo.attached? && logo.byte_size > 1.megabyte

    errors.add(:logo, 'deve ter no máximo 1MB.')
  end
end
