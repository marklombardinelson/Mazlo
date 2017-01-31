class Photo < ApplicationRecord
  belongs_to :offered_meal
  attachment :image
end
