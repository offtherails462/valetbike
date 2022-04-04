Rails.application.routes.draw do
  # get 'users/edit'
  get 'map/index'
  get 'pricing/index'
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

  get 'users', to: 'users#edit', as: 'users_edit'
  patch 'users', to: 'users#update'

  get 'password/reset', to: 'password_resets#new'
  post 'password/reset', to: 'password_resets#create'

  get 'password/reset/edit', to: 'password_resets#edit'
  patch 'password/reset/edit', to: 'password_resets#update'

  get 'stations', to: 'stations#index'

  #resource :stations
  #resource :bikes
end
