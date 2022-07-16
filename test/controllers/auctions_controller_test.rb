require "test_helper"

class AuctionsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get auctions_index_url
    assert_response :success
  end

  test "should get new" do
    get auctions_new_url
    assert_response :success
  end

  test "should get update" do
    get auctions_update_url
    assert_response :success
  end
end
