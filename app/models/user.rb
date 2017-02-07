class User < ApplicationRecord
  after_create :update_profile

  has_many :meal_selections
  has_many :ratings, through: :meal_selections
  has_many :chef_events, foreign_key: :user_id, class_name: "Event"
  has_many :meals
  has_many :offered_meals, through: :meal_selections
  has_many :attending_events, through: :meal_selections, class_name: "Event"

  def self.authenticate(token)
    auth = Knock::AuthToken.new(token: token)

    self.find_or_create_by(auth0: auth.payload["sub"]) do |user|
     user.token = token
    end
  end

  def update_profile
    profile = HTTP.post('https://mazlo.auth0.com/tokeninfo', json: {
     id_token: token
    }).parse

    self.name = profile["name"]
    self.email = profile["email"]
    self.avatar_url = profile["picture"]
    self.profile = profile

    save
  rescue HTTP::Error => ex
    Rails.logger.info "For User #{self.inspect} cannot update auth0 profile because of #{ex}"
  end
end
