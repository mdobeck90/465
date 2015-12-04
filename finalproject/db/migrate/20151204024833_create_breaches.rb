class CreateBreaches < ActiveRecord::Migration
  def change
    create_table :breaches do |t|
      t.string :user_id
      t.string :integer
      t.string :target_id
      t.string :integer

      t.timestamps null: false
    end
  end
end
