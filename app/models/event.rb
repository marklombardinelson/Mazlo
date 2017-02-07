class Event < ApplicationRecord
  geocoded_by :address
  after_validation :geocode

  belongs_to :user
  has_many :meals, through: :offered_meals
  has_many :offered_meals
  has_many :photos, through: :offered_meals

  scope :future, proc { where("events.held_at >= ?", Date.today) }
  scope :past,   proc { where("events.held_at < ?", Date.today) }
end
