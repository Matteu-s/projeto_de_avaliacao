class Company < ApplicationRecord
  has_one_attached :logo

  validate :logo_size

  private

  def logo_size
    return unless logo.attached? && logo.byte_size > 1.megabyte

    errors.add(:logo, 'deve ter no máximo 1MB.')
  end
end
