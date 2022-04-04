class StationsController < ApplicationController
  
  def index
    require_user_logged_in!
    @stations = Station.all.order(identifier: :asc)
  end
  
  
end
