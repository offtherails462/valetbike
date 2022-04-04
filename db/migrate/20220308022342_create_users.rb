class CreateUsers < ActiveRecord::Migration[6.1]
  def change
    create_table :users do |t|
      t.string :email, null: false
      t.string :password_digest
      t.string :first_name
      t.string :last_name
      t.integer :subscription_type
      t.boolean :admin?, default: false

      t.timestamps
    end
  end
end
