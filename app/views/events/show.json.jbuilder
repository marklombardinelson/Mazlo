json.id @event.id
json.address @event.address
json.held_at @event.held_at
json.chef do |chef|
  json.name @event.user.name
  json.id   @event.user.id
end
