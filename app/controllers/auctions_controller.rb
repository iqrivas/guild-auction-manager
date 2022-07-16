class AuctionsController < ApplicationController
  def index
    @auctions = Auction.where(status: 'Planned').sort_by(&:date)
  end

  def new
    @auction = Auction.new 
  end

  def create
    @auction = Auction.create auction_params_create
    redirect_to auctions_path
  end

  def show
    @auction = Auction.find params[:id]
  end

  def edit
  end

  def auction_params_create
    params.require(:auction).permit(:title, :date, :status)
  end
end
