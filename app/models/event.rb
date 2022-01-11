class Event < ApplicationRecord
  after_create_commit { broadcast_prepend_to 'events' }
  after_update_commit { broadcast_replace_to 'events' }
  after_destroy_commit { broadcast_remove_to 'events' }

  validates :title, :description, presence: true

  has_many :registrations, dependent: :destroy
  has_many :users, through: :registrations
end
