json.array! @offered_meals do |offered_meal|
  json.id             offered_meal.id
  json.price          offered_meal.price
  json.customizations offered_meal.customizations

  json.photos offered_meal.photos do |photo|
    json.url attachment_url(photo, :image)
  end

  json.ratings offered_meal.ratings do |rating|
    json.stars offered_meal.ratings
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
