class Item < ActiveRecord::Base
  def generate_new_sku
    chars = self.name.slice(0..2)
    num = Item.all.length
    self.sku = "#{chars}-#{num}"
  end
end
