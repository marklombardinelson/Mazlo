class Cuisine < ApplicationRecord
  belongs_to :meal
  belongs_to :category
end
