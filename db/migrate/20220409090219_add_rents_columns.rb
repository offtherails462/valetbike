class AddRentsColumns < ActiveRecord::Migration[6.1]
  def change
    add_column :rents, :origin_station_id, :integer
    add_column :rents, :destination_station_id, :integer
    add_column :rents, :user_email, :string
  end
end
