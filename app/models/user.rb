class User < ApplicationRecord
  ROLES = %w[seller buyer].freeze

  validates :name, presence: true
  validates :email, presence: true, uniqueness: true, format: { with: URI::MailTo::EMAIL_REGEXP }
  validates :role, presence: true, inclusion: { in: ROLES }

  def seller?
    role == 'seller'
  end

  def buyer?
    role == 'buyer'
  end
end
