json.extract! bid, :id, :message, :status, :bid_amount, :member_id, :auction_item_id, :created_at, :updated_at
json.url bid_url(bid, format: :json)
