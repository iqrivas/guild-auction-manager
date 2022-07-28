require "test_helper"

class AuctionItemsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @auction_item = auction_items(:one)
  end

  test "should get index" do
    get auction_items_url
    assert_response :success
  end

  test "should get new" do
    get new_auction_item_url
    assert_response :success
  end

  test "should create auction_item" do
    assert_difference("AuctionItem.count") do
      post auction_items_url, params: { auction_item: { opening_bid: @auction_item.opening_bid, payment_status: @auction_item.payment_status, sold_for: @auction_item.sold_for } }
    end

    assert_redirected_to auction_item_url(AuctionItem.last)
  end

  test "should show auction_item" do
    get auction_item_url(@auction_item)
    assert_response :success
  end

  test "should get edit" do
    get edit_auction_item_url(@auction_item)
    assert_response :success
  end

  test "should update auction_item" do
    patch auction_item_url(@auction_item), params: { auction_item: { opening_bid: @auction_item.opening_bid, payment_status: @auction_item.payment_status, sold_for: @auction_item.sold_for } }
    assert_redirected_to auction_item_url(@auction_item)
  end

  test "should destroy auction_item" do
    assert_difference("AuctionItem.count", -1) do
      delete auction_item_url(@auction_item)
    end

    assert_redirected_to auction_items_url
  end
end
