class Event < ApplicationRecord
  validates :title, :description, presence: true
end
