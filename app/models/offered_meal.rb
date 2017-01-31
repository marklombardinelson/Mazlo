class OfferedMeal < ApplicationRecord
  belongs_to :meal
  belongs_to :event
  has_many :meal_selections
end
