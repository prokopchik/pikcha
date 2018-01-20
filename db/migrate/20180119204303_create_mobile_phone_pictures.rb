class CreateMobilePhonePictures < ActiveRecord::Migration[5.1]
  def change
    create_table :mobile_phone_pictures do |t|
      t.attachment :picture
      t.integer :mobile_phone_id

      t.timestamps
    end
  end
end
