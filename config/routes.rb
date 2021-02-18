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

  root to: "users#login"

  ### User ###
  get "/users", to: "users#index", as: "users"
  get "/users/new", to: "users#new", as: "new_user"
  post "/users", to: "users#create"
  get "/users/:id", to: "users#show", as: "user"
  get "/users/:id/edit", to: "users#edit", as: "edit_user"
  post "/users/:id/edit", to: "users#update"
  delete "/users/:id", to: "users#destroy"
  get "/users/:id/edit_password", to: "users#edit_password", as: "edit_password"
  post "/users/:id/edit_password", to: "users#update_password"

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
  delete "/vacations/:id", to: "vacations#destroy", as: "delete_vacation"
  get "/vacations/:id/add_flight", to: "vacations#add_flight", as: "add_flight"
  post "/vacations/:id/add_flight", to: "vacations#create_flight"
  get "/vacations/:id/edit_flight", to: "vacations#edit_flight", as: "edit_flight"
  patch "/vacations/:id/edit_flight", to: "vacations#update_flight"
  get "/vacations/:id/find_activity", to: "vacations#find_activity", as: "find_activity"
  post "/vacations/:id/find_activity", to: "vacations#add_activity"

  ### Activities ###
  get "/activities", to: "activities#index", as: "activities"
  get "/activities/:id", to: "activities#show", as: "activity"

  ### Flights ###
  get "/flights", to: "flights#index", as: "flights"
  delete "/flights/:id/destroy_departure", to: "flights#destroy_departure"
  delete "/flights/:id/destroy_arrival", to: "flights#destroy_arrival"
  get "/flights/:id", to: "flights#show", as: "flight"
  
  ### Vacation Activities

  delete "/vacation_activities/:id", to: "vacation_activities#destroy", as: "delete_activity"


end
