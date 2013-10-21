require 'test_helper'

class StaticControllerTest < ActionController::TestCase
  test "should get wwr" do
    get :wwr
    assert_response :success
  end

end
