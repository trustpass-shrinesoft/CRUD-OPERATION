require 'test_helper'

class ConControllerTest < ActionDispatch::IntegrationTest
  test "should get hello" do
    get con_hello_url
    assert_response :success
  end

end
