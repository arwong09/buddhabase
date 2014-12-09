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

require 'test_helper'

class ItemTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
