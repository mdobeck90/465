class CreateImageUserObjects < ActiveRecord::Migration
  def change
    create_table :image_user_objects do |t|
      t.integer :image_id
      t.integer :user_id

      t.timestamps null: false
    end
  end
end
