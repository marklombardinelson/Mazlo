Rails.application.routes.draw do
  resources :users
  resources :events
  resources :offered_meals
  resources :events, except: [:index]

  get 'user/update'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
