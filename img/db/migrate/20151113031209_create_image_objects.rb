class CreateImageObjects < ActiveRecord::Migration
  def change
    create_table :image_objects do |t|
      t.string :filename
      t.boolean :private
      t.integer :user_id

      t.timestamps null: false
    end
  end
end
