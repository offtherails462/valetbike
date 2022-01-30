require 'csv'
namespace :test do
  task :importdata => :environment do
station_data = 'notes/station-data.csv'
bike_data = 'notes/bike-data.csv'
CSV.foreach(station_data, :headers => true) do |row|
    s = Station.new(identifier: row[0], name: row[1], address: row[6])
    s.save
    
end
puts(Station.all)
CSV.foreach(bike_data, :headers => true) do |row|
    b = Bike.new(identifier: row[0])
    b.current_station = Station.find_or_initialize_by(identifier: row[1])
    b.save
end
end
end
