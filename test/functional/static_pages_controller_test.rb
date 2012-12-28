require 'test_helper'

class StaticPagesControllerTest < ActionController::TestCase
  test "should get Home" do
    get :home
    assert_response :success
  end

  test "should get About" do
    get :about
    assert_response :success
  end

  test "should get FAQ" do
    get :faq
    assert_response :success
  end

end
