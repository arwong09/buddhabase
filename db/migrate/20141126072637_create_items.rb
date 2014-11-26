class CreateItems < ActiveRecord::Migration
  def change
    create_table :items do |t|
      t.string :sku, null: false
      t.string :name, null: false
      t.string :category, null: false
      t.integer :quantity, null: false
      t.text :description

      t.timestamps
    end
  end
end
