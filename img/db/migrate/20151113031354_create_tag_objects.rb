class CreateTagObjects < ActiveRecord::Migration
  def change
    create_table :tag_objects do |t|
      t.string :str
      t.integer :image_id

      t.timestamps null: false
    end
  end
end
