require "test_helper"

class WelcomeControllerTest < ActionDispatch::IntegrationTest
  test "should get explanation" do
    get welcome_explanation_url
    assert_response :success
  end

  test "should get subscriptions" do
    get welcome_subscriptions_url
    assert_response :success
  end

  test "should get map" do
    get welcome_map_url
    assert_response :success
  end
end
