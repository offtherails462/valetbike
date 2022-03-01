require 'csv'
namespace :development do
  task importdata: :environment do
    station_data = 'notes/station-data.csv'
    bike_data = 'notes/bike-data.csv'
    CSV.foreach(station_data, headers: true) do |row|
      s = Station.new(identifier: row[0], name: row[1], address: row[6])
      s.save
    end
    puts(Station.all)
    CSV.foreach(bike_data, headers: true) do |row|
      bike_station = Station.find_by_identifier(row[1])
      b = Bike.new(identifier: row[0], current_station_id: row[1], current_station: bike_station)
      b.save
    end
    puts(Bike.all)
  end
end
