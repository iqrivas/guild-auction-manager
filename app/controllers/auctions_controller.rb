class AuctionsController < ApplicationController
  def index
    @auctions = Auction.where(status: 'Planned').sort_by(&:date)
  end

  def new
    @auction = Auction.new 
  end

  def create
    @auction = Auction.create title:params[:auction][:title], date:params[:auction][:date], status:params[:auction][:status]
  end

  def edit
  end
end
