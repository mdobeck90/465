class CreateBreaches < ActiveRecord::Migration
  def change
    create_table :breaches do |t|
      t.integer :user_id
      t.integer :target_id
      t.boolean :breached

      t.timestamps null: false
    end
  end
end
