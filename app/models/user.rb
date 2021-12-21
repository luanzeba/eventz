class User < ApplicationRecord
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i.freeze

  validates :email, format: { with: VALID_EMAIL_REGEX }

  has_many :registrations, dependent: :destroy
  has_many :events, through: :registrations
end
