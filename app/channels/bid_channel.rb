class BidChannel < ApplicationCable::Channel
  def subscribed
    stream_from "bid_#{params[:auction_item_id]}"

    puts "//////////////////////////////"
    puts params
    puts "//////////////////////////////"
  end

  def unsubscribed
    # Any cleanup needed when channel is unsubscribed
  end
end
