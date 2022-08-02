# == Schema Information
#
# Table name: auctions
#
#  id               :bigint           not null, primary key
#  title            :string
#  date             :date
#  status           :integer          default("Draft")
#  amount_collected :integer
#  created_at       :datetime         not null
#  updated_at       :datetime         not null
#
class Auction < ApplicationRecord

    has_many :auction_items
    has_many :items, through: :auction_items
    has_many :members, through: :auction_items

    enum status: [:Draft, :Scheduled, :'In Progress', :Completed, :Cancelled]

    validates :title, presence: true
    validates :title, length: { maximum: 255 }

    def sum_collected
        auction_items.sum(:sold_for)
    end

end
