Rails.application.routes.draw do
  root to: "stations#index"

  resource :stations
  resource :bikes
end
