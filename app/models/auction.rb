# == Schema Information
#
# Table name: auctions
#
#  id               :integer          not null, primary key
#  title            :string
#  date             :date
#  status           :string
#  amount_collected :integer
#  created_at       :datetime         not null
#  updated_at       :datetime         not null
#
class Auction < ApplicationRecord

    has_many :auction_items
    has_many :items, through: :auction_items
    has_many :members, through: :auction_items

    validates :title, presence: true
    validates :title, length: { maximum: 255 }

end
