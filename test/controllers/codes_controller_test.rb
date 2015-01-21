require 'test_helper'

class CodesControllerTest < ActionController::TestCase
  test "should get authenticate" do
    get :authenticate
    assert_response :success
  end

  test "should get generate" do
    get :generate
    assert_response :success
  end

end
