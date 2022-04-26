require "test_helper"

class StudentsControllerTest < ActionDispatch::IntegrationTest
  test "should get rents" do
    get students_rents_url
    assert_response :success
  end
end
