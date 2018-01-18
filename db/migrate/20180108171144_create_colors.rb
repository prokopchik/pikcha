class CreateColors < ActiveRecord::Migration[5.1]
  def change
    create_table :colors do |t|
      t.string :name

      t.timestamp
    end
  end
end
