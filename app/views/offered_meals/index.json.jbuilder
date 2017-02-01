json.array! @offered_meals do |offered_meal|
  json.id             offered_meal.id
  json.price          offered_meal.price
  json.customizations offered_meal.customizations

  json.photos offered_meal.photos do |photo|
    json.url attachment_url(photo, :image)
  end

  json.ratings offered_meal.ratings do |rating|
    json.stars offered_meal.meal_selections.ratings
  end

  json.meal do |meal|
    json.ingredients offered_meal.meal.ingredients
    json.name offered_meal.meal.name
  end

  json.event do |event|
    json.held_at offered_meal.event.held_at
    json.address offered_meal.event.address
    json.chef do |chef|
      json.name offered_meal.event.user.name
      json.id offered_meal.event.user.id
    end
  end
end
# {
#   "events": [
#     {
#       "address": "123 Main St. Saint Pete, FL 33713",
#       "held_at": "2017-02-05T20:47:28.149Z",
#       "chef": {
#         "id": 1,
#         "name": "bob"
#       },
#       "meal": {
#         "ingredients": "Flour, other stuff",
#         "customizations": "Things",
#         "name": "Tacos",
#         "id": 1,
#         "price": 8,
#         "ratings": []
#       },
#       "photos": [
#         {
#           "url": "/attachments/63a36c5b28be4b31d5957669d0a765a894d0fd5d/store/75985/image"
#         }
#       ],
#     },
#     {
#       "address": "123 Main St. Saint Pete, FL 33713",
#       "held_at": "2017-02-05T20:47:28.149Z",
#       "chef": {
#         "id": 2,
#         "name": "bob"
#       },
#       "meal": {
#         "ingredients": "Meat, other stuff",
#         "customizations": "Things",
#         "name": "Burgers",
#         "id": 1,
#         "price": 8,
#         "ratings": []
#       },
#       "photos": [
#         {
#           "url": "/attachments/f01b5739ee23a8b1a763fe3aac9b635c0dda5324/store/75984/image"
#         }
#       ],
#     },
#   ]
# }
