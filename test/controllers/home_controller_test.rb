require 'test_helper'

class HomeControllerTest < ActionController::TestCase
  test "should get about" do
    get :about
    assert_response :success
  end

  test "should get services" do
    get :services
    assert_response :success
  end

  test "should get contact" do
    get :contact
    assert_response :success
  end

  test "should get pricing" do
    get :pricing
    assert_response :success
  end

  test "should get testimonials" do
    get :testimonials
    assert_response :success
  end

end
