class Event < ApplicationRecord
  validates :title, :description, presence: true

  has_many :registrations
  has_many :users, through: :registrations
end
