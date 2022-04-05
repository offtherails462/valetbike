class StationsController < ApplicationController
  helper_method :sort_column, :sort_direction
  def index

    require_user_logged_in!
    @stations = Station.all.order(sort_column + ' ' + sort_direction)
    @bikes = Bike.all.order(identifier: :asc)
  end

  def search
    @stations = Station.where("name LIKE ?", "%" + params[:q] + "%")
  end

  private
  def sort_column
    params[:sort] || "name"
  end
  
  def sort_direction
    params[:direction] || "asc"

  end

  
  
end
