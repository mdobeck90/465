class CreateJobs < ActiveRecord::Migration
  def change
    create_table :jobs do |t|
      t.string :name
      t.integer :payout
      t.string :reward
      t.integer :difficulty
      t.string :description
      t.integer :time_to_complete
      t.integer :xp

      t.timestamps null: false
    end
  end
end
