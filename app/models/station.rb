class Station < ApplicationRecord
  validates_presence_of    :identifier,
                           :name,
                           :address
  validates_uniqueness_of  :identifier
  # geocoded_by              :address
  # after_validation         :geocode
  has_many :docked_bikes, class_name: :Bike, foreign_key: :current_station_id
  
end
