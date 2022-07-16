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
end
