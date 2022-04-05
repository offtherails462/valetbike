
namespace :add_latitude do
    desc "add latitude"
    task :add_lati => :environment do
      Station.all.each do |station|
        location =Geocoder.search(station.address)
        station.latitude = location[0].latitude
        station.save
      end
    end
  end