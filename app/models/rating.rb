class Rating < ApplicationRecord
  belongs_to :meal_selection
  has_many :users, through: :meal_selections
end
