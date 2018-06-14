class User < ApplicationRecord
  has_one :company, inverse_of: :user, dependent: :destroy

  delegate :name, :address, to: :company, prefix: true, allow_nil: true
end
