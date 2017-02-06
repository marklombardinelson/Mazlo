json.id @event.id
json.address @event.address
json.held_at @event.held_at
json.maximum_guest_count @event.maximum_guest_count

json.chef do |chef|
  json.name @event.user.name
  json.id   @event.user.id

  json.photo do |photo|
    json.image_id @photo.image_id
    json.url attachment_url(photo, :image, host: URI(%{#{request.protocol}#{request.host}:#{request.port}}))
  end

  json.meal do |meal|
    json.name offered_meal.meal.name
  end

  json.offered_meal do |offered_meal|
    json.price offered_meal.price
  end
end
