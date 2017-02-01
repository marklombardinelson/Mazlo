class Event < ApplicationRecord
  belongs_to :user
  has_many :meals, through: :offered_meals
  has_many :offered_meals

  scope :future, proc { where("events.held_at >= ?", Date.today) }
  scope :past,   proc { where("events.held_at < ?", Date.today) }
end
