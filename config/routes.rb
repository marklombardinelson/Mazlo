Rails.application.routes.draw do
  resources :offered_meals

  get 'user/update'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
