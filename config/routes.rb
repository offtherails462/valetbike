Rails.application.routes.draw do

  get 'footer/about'
  get 'map/index'
  get 'how_it_works/index'
  get 'home/index'
  root to: "home#index"

  get 'signup', to: 'registrations#new'
  post 'signup', to: 'registrations#create'

  get 'login', to: 'sessions#new'
  post 'login', to: 'sessions#create', as: 'log_in'

  delete 'logout', to: 'sessions#destroy'

  get 'password', to: 'passwords#edit', as: 'edit_password'
  patch 'password', to: 'passwords#update'

  get 'users/edit', to: 'users#edit', as: 'users_edit'
  patch 'users/edit', to: 'users#update'

  get 'users/view', to: 'users#view', as: 'users_view'

  get 'users/rides', to: 'users#rides', as: 'users_rides'

  get 'password/reset', to: 'password_resets#new'
  post 'password/reset', to: 'password_resets#create'

  get 'password/reset/edit', to: 'password_resets#edit'
  patch 'password/reset/edit', to: 'password_resets#update'

  get 'rent', to: 'rents#new'
  get 'return', to: 'rents#edit'
  post 'rent', to: 'rents#create', as: 'rent_create'
  patch 'rent.:id', to: 'rents#update', as: 'return_update'
  get 'rentrecord', to: 'rents#index'

  get 'stations', to: 'stations#index'
  get 'search', to: 'stations#search'

  get 'checkout', to: 'checkouts#show'
  post 'checkout', to: 'checkouts#show'

  resource :rents
  #resource :stations
  #resource :bikes
end
