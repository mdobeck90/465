class CreateReferences < ActiveRecord::Migration
  def change
    create_table :references do |t|
      t.text :url
      t.text :description

      t.timestamps null: false
    end
  end
end
