class CreateQuotations < ActiveRecord::Migration
  def change
    create_table :quotations do |t|
      t.string :quote
      t.string :speaker
      t.integer :likes

      t.timestamps null: false
    end
  end
end
