class AuctionsController < ApplicationController
  def index
    @auctions = Auction.where(status: 'Planned').sort_by(&:date)
  end

  def new
  end

  def update
  end
end
