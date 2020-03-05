require 'test_helper'

class PagesControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get pages_index_url
    assert_response :success
  end

  test "should get page_not_found" do
    get pages_page_not_found_url
    assert_response :success
  end

end
