# == Schema Information
#
# Table name: items
#
#  id          :integer          not null, primary key
#  sku         :string(255)      not null
#  name        :string(255)      not null
#  category    :string(255)      not null
#  quantity    :integer          not null
#  description :text
#  created_at  :datetime
#  updated_at  :datetime
#

class Item < ActiveRecord::Base
  def generate_new_sku
    chars = self.name.slice(0..2)
    num = Item.all.length
    self.sku = "#{chars}-#{num}"
  end
end
