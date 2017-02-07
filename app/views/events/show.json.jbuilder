json.id @event.id
json.address @event.address
json.held_at @event.held_at
json.maximum_guest_count @event.maximum_guest_count

json.chef do |chef|
  json.name @event.user.name
  json.id   @event.user.id
end

json.offered_meals @event.offered_meals do |offered_meal|
  json.price offered_meal.price

  if offered_meal.meal
    json.meal do |meal|
      json.name offered_meal.meal.name
    end
  end

  if offered_meal.photos.any?
    json.photos offered_meal.photos do |photo|
      json.image_id photo.image_id
      json.url attachment_url(photo, :image, host: URI(%{#{request.protocol}#{request.host}:#{request.port}}))
    end
  else
    json.photos do
      json.url image_url("default_meal.jpg")
    end
  end
end
