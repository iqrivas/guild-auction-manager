# == Schema Information
#
# Table name: members
#
#  id         :integer          not null, primary key
#  username   :string
#  rank       :string
#  email      :string
#  status     :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
class Member < ApplicationRecord
    has_many :auction_items
end
