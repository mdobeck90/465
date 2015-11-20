class CreateImageUsers < ActiveRecord::Migration
  def change
    create_table :image_users do |t|
      t.belongs_to :image, index: true
      t.belongs_to :user, index: true

      t.timestamps null: false
    end
  end
end
