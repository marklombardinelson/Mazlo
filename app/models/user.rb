class User < ApplicationRecord
  has_many :meal_selections
  has_many :ratings, through: :meal_selections
  has_many :chef_events, foreign_key: :chef_id, class_name: "Event"
  has_many :meals
  has_many :offered_meals, through: :meal_selections
  has_many :attending_events, through: :meal_selections, class_name: "Event"
end
