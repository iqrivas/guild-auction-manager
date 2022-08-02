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
class Member < ApplicationRecord
    has_many :auction_items
    has_many :bids

    enum status: [:Inactive, :Active, :Blocked]
    enum rank: [:Founder, :Officer, :Member, :Friend]
end
