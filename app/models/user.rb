class User < ApplicationRecord
  has_one :company, inverse_of: :user, dependent: :destroy

  accepts_nested_attributes_for :company

  delegate :name, :address, to: :company, prefix: true, allow_nil: true

  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  validates :email, presence: true, length: { maximum: 255 },
                    format: { with: VALID_EMAIL_REGEX }
  validates :name, presence: true
  validates :password, presence: true
end
