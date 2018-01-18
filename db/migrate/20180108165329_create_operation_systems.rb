class CreateOperationSystems < ActiveRecord::Migration[5.1]
  def change
    create_table :operation_systems do |t|
      t.string :name

      t.timestamp
    end
  end
end
