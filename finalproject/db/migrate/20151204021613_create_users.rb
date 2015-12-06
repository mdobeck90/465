class CreateUsers < ActiveRecord::Migration
  def change

    create_table :users do |t|
      t.string :name
      t.string :password
      t.integer :cash, :default => 10000 
      t.integer :zeroday, :default => 0
      t.integer :o_contract, :default => 0
      t.integer :honeypot, :default => 0
      t.integer :firewall, :default => 0
      t.integer :active_firewall, :default => 0
      t.integer :active_honeypot, :default => 0

      t.timestamps null: false
    end

    add_index :users, :name, unique: true
  end
end
