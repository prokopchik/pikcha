class CreateJoinTableColorsMobilePhones < ActiveRecord::Migration[5.1]
  def change
    create_join_table :colors, :mobile_phones do |t|
    end
  end
end
