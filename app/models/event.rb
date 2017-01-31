class Event < ApplicationRecord
  belongs_to :user
  has_many :meals, through: :offered_meals
  has_many :offered_meals
end
