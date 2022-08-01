# == Schema Information
#
# Table name: items
#
#  id          :integer          not null, primary key
#  name        :string
#  quality     :integer          default("Gold")
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  category_id :integer          not null
#
require "test_helper"

class ItemTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
