class CreateManufacturer < ActiveRecord::Migration[5.1]
  def change
    create_table :manufacturers do |t|
      t.string :name

      t.timestamp
    end
  end
end
