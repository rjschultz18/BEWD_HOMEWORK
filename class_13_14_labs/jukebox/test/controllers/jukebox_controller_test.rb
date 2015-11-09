require 'test_helper'

class JukeboxControllerTest < ActionController::TestCase
  test "should get home" do
    get :home
    assert_response :success
  end

  test "should get songs" do
    get :songs
    assert_response :success
  end

  test "should get shuffle" do
    get :shuffle
    assert_response :success
  end

end
