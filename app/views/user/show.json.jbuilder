# json.array! @offered_meals do |offered_meal|
#   json.id             offered_meal.id
#   json.price          offered_meal.price
#   json.customizations offered_meal.customizations
#
#   json.photos offered_meal.photos do |photo|
#     json.url attachment_url(photo, :image)
#   end
#
#   json.ratings offered_meal.ratings do |rating|
#     json.stars offered_meal.meal_selections.ratings
#   end
#
#   json.meal do |meal|
#     json.ingredients offered_meal.meal.ingredients
#   end
#
#   json.event do |event|
#     json.held_at offered_meal.event.held_at
#     json.address offered_meal.event.address
#     json.chef do |chef|
#       json.name offered_meal.event.user.name
#       json.id offered_meal.event.user.id
#
#   json.category do |category|
#     json.name offered_meal.category.name
#   end
#
#   json.cuisine do |cuisine|
#     json.meal_id do |meal_id|
#       json.name offered_meal.category.name
#   end
#
#
#

#     end
#   end
# end
