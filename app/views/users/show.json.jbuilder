# Taken From Event Info
# json.id @event.id
# json.address @event.address
# json.held_at @event.held_at
# # Need To Add To Event Model Migration
# # json.guest_list @event.guest_list
#
# json.chef do |chef|
#   json.name @event.user.name
#   json.id   @event.user.id
#
#   json.photo do |photo|
#     json.image_id @photo.image_id
#   end
#
#   json.meal do |meal|
#     json.name offered_meal.meal.name
#   end
#
#   json.offered_meal do |offered_meal|
#     json.price offered_meal.price
#   end
# end

# Created When Controller Created
# json.partial! "users/user", user: @user
