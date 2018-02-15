class CreateMobilePhones < ActiveRecord::Migration[5.1]
  def change
    create_table :mobile_phones do |t|
      t.string  :name
      t.integer :manufacturer_id
      t.float   :price
      t.integer :memory_storage
      t.float   :display_size
      t.integer :operative_memory
      t.string  :processor
      t.integer :operation_system_id

      t.timestamps
    end
  end
end
