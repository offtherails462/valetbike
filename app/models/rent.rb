class Rent < ApplicationRecord
    validates_presence_of    :origin_station_id,
                           :bike_id
                           :user_email

    belongs_to :origin_station, class_name: :Station, foreign_key: :origin_station_id, optional: true
    belongs_to :destination_station, class_name: :Station, foreign_key: :destination_station_id, optional: true
    belongs_to :user, class_name: :User, foreign_key: :user_email, optional: true
    belongs_to :destination_station, class_name: :Station, foreign_key: :destination_station_id, optional: true
    belongs_to :rented_bike, class_name: :Bike, foreign_key: :bike_id, optional: true
    # belongs_to :user, class_name: :Current, foreign_key: :user_email, optional: true
end
