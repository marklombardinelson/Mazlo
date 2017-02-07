class ApplicationController < ActionController::API
  include Knock::Authenticable

  def current_user
    # Temp using the first user as the current user until auth0 works
    User.first

    # @current_user ||= token ? User.authenticate(token) : nil
  end
end
