json.extract! auction_item, :id, :opening_bid, :sold_for, :payment_status, :created_at, :updated_at
json.url auction_item_url(auction_item, format: :json)
