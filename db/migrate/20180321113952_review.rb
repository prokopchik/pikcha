class Review < ActiveRecord::Migration[5.1]
  def change
    create_table :reviews do |t|
      t.string :name
      t.string :email
      t.text :discription
      
      t.timestamps
    end
  end
end
