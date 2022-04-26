class AddIdentifierToRent < ActiveRecord::Migration[6.1]
  def change
    add_column :rents, :identifier, :integer
  end
end
