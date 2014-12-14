class AddIndexToItems < ActiveRecord::Migration
  def change
    add_index :items, :sku, unique: true
  end
end
