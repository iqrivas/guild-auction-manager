# == Schema Information
#
# Table name: members
#
#  id         :integer          not null, primary key
#  username   :string
#  rank       :integer          default("Founder")
#  email      :string
#  status     :integer          default("Inactive")
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
require "test_helper"

class MemberTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
