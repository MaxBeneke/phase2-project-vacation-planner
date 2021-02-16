Rails.application.routes.draw do
  # resources :arrivals
  # resources :departures
  # resources :vacation_activities
  # resources :vacation_flights
  # resources :vacations
  # resources :flights
  # resources :activities
  # resources :destinations
  # resources :destinations
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  ### User ###
  get "/users", to: "users#index", as: "users"
  get "/users/new", to: "users#new", as: "new_user"
  post "/users", to: "users#create"
  get "/users/:id", to: "users#show", as: "user"
  get "/users/:id/edit", to: "users#edit", as: "edit_user"
  patch "/users/:id", to: "users#update"
  delete "/users/:id", to: "users#destroy"

  ### Login/Logout ###
  get "/login", to: "users#login", as: "login"
  post "/handle_login", to: "users#handle_login"
  delete "/logout", to: "users#logout", as: "logout"

  ### Destination ###
  get "/destinations", to: "destinations#index", as: "destinations"
  get "/destinations/:id", to: "destinations#show", as: "destination"

  ### Vacation ###
  get "/vacations", to: "vacations#index", as: "vacations"
  get "/vacations/new", to: "vacations#new", as: "new_vacation"
  post "/vacations", to: "vacations#create"
  get "/vacations/:id", to: "vacations#show", as: "vacation"
  get "/vacations/:id/edit", to: "vacations#edit", as: "edit_vacation"
  patch "/vacations/:id", to: "vacations#update"
  delete "/vacations/:id", to: "vacations#destroy"

  ### Activities ###
  get "/activities", to: "activities#index", as: "activities"
  get "/activities/:id", to: "activities#show", as: "activity"

  ### Flights ###
  get "/flights", to: "flights#index", as: "flights"
  get "/flights/:id", to: "flights#show", as: "flight"

end