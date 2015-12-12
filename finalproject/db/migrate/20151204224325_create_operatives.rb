class CreateOperatives < ActiveRecord::Migration
  def change
    create_table :operatives do |t|
      t.integer :user_id
      t.string :name
      t.string :status
      t.integer :skill
      t.integer :xp
      t.integer :job_id
      t.time :return_time

      t.timestamps null: false
    end
  end
end
