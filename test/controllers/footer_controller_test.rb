require "test_helper"

class FooterControllerTest < ActionDispatch::IntegrationTest
  test "should get contact" do
    get footer_contact_url
    assert_response :success
  end

  test "should get faq" do
    get footer_faq_url
    assert_response :success
  end

  test "should get about" do
    get footer_about_url
    assert_response :success
  end
end
