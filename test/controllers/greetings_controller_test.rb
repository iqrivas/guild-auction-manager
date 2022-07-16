require "test_helper"

class GreetingsControllerTest < ActionDispatch::IntegrationTest
  test "should get hello" do
    get greetings_hello_url
    assert_response :success
  end

  test "should get hello with name" do
    get greetings_hello_name_url
    assert_response :success
  end

  test "should get goodbye" do
    get greetings_goodbye_url
    assert_response :success
  end
end
