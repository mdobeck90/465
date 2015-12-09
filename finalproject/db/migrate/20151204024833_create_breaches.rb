class CreateBreaches < ActiveRecord::Migration
  def change
    create_table :breaches do |t|
      t.integer :user_id
      t.integer :target_id
      t.boolean :breached
      t.integer :z_stolen
      t.integer :honeypot_stolen
      t.integer :firewall_stolen
      t.integer :o_contract_stolen
      t.integer :cash_stolen

      t.timestamps null: false
    end
  end
end
