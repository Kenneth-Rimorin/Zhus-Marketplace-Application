require 'test_helper'

class ListingControllerTest < ActionDispatch::IntegrationTest
  test "should get manage" do
    get listing_manage_url
    assert_response :success
  end

end
