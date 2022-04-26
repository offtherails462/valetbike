class RemovePreviousStationId < ActiveRecord::Migration[6.1]
  def change
    remove_column :rents, :previous_station_id, :string
  end
end
