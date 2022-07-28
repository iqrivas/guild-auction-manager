# == Schema Information
#
# Table name: items
#
#  id             :integer          not null, primary key
#  name           :string
#  quality        :string
#  opening_bid    :integer
#  sold_for       :integer
#  payment_status :string
#  created_at     :datetime         not null
#  updated_at     :datetime         not null
#
class Item < ApplicationRecord
end
