require 'test_helper'

class CustomerEstimatesControllerTest < ActionController::TestCase
  setup do
    @customer_estimate = customer_estimates(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:customer_estimates)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create customer_estimate" do
    assert_difference('CustomerEstimate.count') do
      post :create, customer_estimate: { email: @customer_estimate.email, name: @customer_estimate.name, phone: @customer_estimate.phone }
    end

    assert_redirected_to customer_estimate_path(assigns(:customer_estimate))
  end

  test "should show customer_estimate" do
    get :show, id: @customer_estimate
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @customer_estimate
    assert_response :success
  end

  test "should update customer_estimate" do
    patch :update, id: @customer_estimate, customer_estimate: { email: @customer_estimate.email, name: @customer_estimate.name, phone: @customer_estimate.phone }
    assert_redirected_to customer_estimate_path(assigns(:customer_estimate))
  end

  test "should destroy customer_estimate" do
    assert_difference('CustomerEstimate.count', -1) do
      delete :destroy, id: @customer_estimate
    end

    assert_redirected_to customer_estimates_path
  end
end
