require 'test_helper'

class AdminLeafsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get admin_leafs_index_url
    assert_response :success
  end

end
