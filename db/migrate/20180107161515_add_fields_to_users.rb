class AddFieldsToUsers < ActiveRecord::Migration[5.1]
  def change
    add_column :users, :name, :string
    add_column :users, :phone_number, :string
    add_column :users, :role_id, :integer
    add_column :users, :currency_id, :integer
  end
end
