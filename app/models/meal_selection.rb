class MealSelection < ApplicationRecord
  belongs_to :offered_meal
  belongs_to :user
  has_many :ratings
  has_many :photos
end
