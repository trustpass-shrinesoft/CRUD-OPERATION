require 'test_helper'

class DataControllerTest < ActionDispatch::IntegrationTest
  test "should get getdata" do
    get data_getdata_url
    assert_response :success
  end

end
