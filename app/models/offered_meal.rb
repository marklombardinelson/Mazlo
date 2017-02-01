class OfferedMeal < ApplicationRecord
  belongs_to :meal
  belongs_to :event
  has_many :meal_selections
  has_many :photos
  has_many :ratings, through: :meal_selections
end
