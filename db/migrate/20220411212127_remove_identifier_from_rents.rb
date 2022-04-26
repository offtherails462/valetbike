class RemoveIdentifierFromRents < ActiveRecord::Migration[6.1]
  def change
    remove_column :rents, :identifier, :integer
  end
end
