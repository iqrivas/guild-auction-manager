class AuctionItemsController < ApplicationController
  before_action :set_auction_item, only: %i[ show edit update destroy ]

  # GET /auction_items or /auction_items.json
  def index
    @auction_items = policy_scope(AuctionItem.all)
  end

  # GET /auction_items/1 or /auction_items/1.json
  def show
    @bids = Bid.where(auction_item_id: @auction_item.id).sort_by(&:created_at).reverse
  end

  # GET /auction_items/new
  def new
    @auction_id = Auction.find(params[:auction])
    @auction_item = authorize AuctionItem.new(auction: @auction_id)
  end

  # GET /auction_items/1/edit
  def edit
  end

  # POST /auction_items or /auction_items.json
  def create
    @auction_item = authorize AuctionItem.new(auction_item_params)

    respond_to do |format|
      if @auction_item.save
        format.html { redirect_to auction_url(@auction_item.auction), notice: "Auction item was successfully created." }
        format.json { render :show, status: :created, location: @auction_item.auction }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @auction_item.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /auction_items/1 or /auction_items/1.json
  def update
    respond_to do |format|
      if @auction_item.update(auction_item_params)
        format.html { redirect_to auction_url(@auction_item.auction), notice: "Auction item was successfully updated." }
        format.json { render :show, status: :ok, location: @auction_item.auction }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @auction_item.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /auction_items/1 or /auction_items/1.json
  def destroy
    @auction_item.destroy

    respond_to do |format|
      format.html { redirect_to auction_items_url, notice: "Auction item was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_auction_item
      @auction_item = AuctionItem.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def auction_item_params
      params.require(:auction_item).permit(:auction_id, :item_id, :member_id, :opening_bid, :sold_for, :payment_status)
    end
end
