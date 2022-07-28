require "application_system_test_case"

class AuctionItemsTest < ApplicationSystemTestCase
  setup do
    @auction_item = auction_items(:one)
  end

  test "visiting the index" do
    visit auction_items_url
    assert_selector "h1", text: "Auction items"
  end

  test "should create auction item" do
    visit auction_items_url
    click_on "New auction item"

    fill_in "Opening bid", with: @auction_item.opening_bid
    fill_in "Payment status", with: @auction_item.payment_status
    fill_in "Sold for", with: @auction_item.sold_for
    click_on "Create Auction item"

    assert_text "Auction item was successfully created"
    click_on "Back"
  end

  test "should update Auction item" do
    visit auction_item_url(@auction_item)
    click_on "Edit this auction item", match: :first

    fill_in "Opening bid", with: @auction_item.opening_bid
    fill_in "Payment status", with: @auction_item.payment_status
    fill_in "Sold for", with: @auction_item.sold_for
    click_on "Update Auction item"

    assert_text "Auction item was successfully updated"
    click_on "Back"
  end

  test "should destroy Auction item" do
    visit auction_item_url(@auction_item)
    click_on "Destroy this auction item", match: :first

    assert_text "Auction item was successfully destroyed"
  end
end
