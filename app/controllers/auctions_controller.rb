class AuctionsController < ApplicationController
  before_action :set_auction, only: [:show, :edit, :update]
    
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
  end

  def edit
  end

  def update
    @auction.update auction_params_update
    redirect_to auctions_path
  end

  private
  def set_auction
    @auction = Auction.find params[:id]
  end

  def auction_params_create
    params.require(:auction).permit(:title, :date, :status)
  end

  def auction_params_update
    params.require(:auction).permit(:title, :date, :status, :amount_collected)
  end
end