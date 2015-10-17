require 'test_helper'

class MainframeControllerTest < ActionController::TestCase
  test "should get login" do
    get :login
    assert_response :success
  end

  test "should get home" do
    get :home
    assert_response :success
  end

  test "should get mainframe" do
    get :mainframe
    assert_response :success
  end

  test "should get failed" do
    get :failed
    assert_response :success
  end

end
