require 'test_helper'

class PagesControllerTest < ActionController::TestCase
  test "should get Home" do
    get :Home
    assert_response :success
  end

  test "should get About" do
    get :About
    assert_response :success
  end

  test "should get Services" do
    get :Services
    assert_response :success
  end

  test "should get Contact" do
    get :Contact
    assert_response :success
  end

  test "should get Pricing" do
    get :Pricing
    assert_response :success
  end

  test "should get Testimonials" do
    get :Testimonials
    assert_response :success
  end

end
