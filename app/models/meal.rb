class Meal < ApplicationRecord
  belongs_to :chef_user, foreign_key: :chef_id, class_name: "User"
  has_many :cuisines
  has_many :offered_meals
  has_many :categories, through: :cuisine
  has_many :events, through: :offered_meals
end
