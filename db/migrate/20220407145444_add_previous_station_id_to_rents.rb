class AddPreviousStationIdToRents < ActiveRecord::Migration[6.1]
  def change
    add_column :rents, :previous_station_id, :string
  end
end
