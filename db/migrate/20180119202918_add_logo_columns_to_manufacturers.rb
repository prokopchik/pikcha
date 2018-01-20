class AddLogoColumnsToManufacturers < ActiveRecord::Migration[5.1]
  def up
      add_attachment :manufacturers, :logo
    end

    def down
      remove_attachment :manufacturers, :logo
    end
end
