require 'test_helper'

class SalutationsControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:salutations)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create salutation" do
    assert_difference('Salutation.count') do
      post :create, :salutation => { }
    end

    assert_redirected_to salutation_path(assigns(:salutation))
  end

  test "should show salutation" do
    get :show, :id => salutations(:one).id
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => salutations(:one).id
    assert_response :success
  end

  test "should update salutation" do
    put :update, :id => salutations(:one).id, :salutation => { }
    assert_redirected_to salutation_path(assigns(:salutation))
  end

  test "should destroy salutation" do
    assert_difference('Salutation.count', -1) do
      delete :destroy, :id => salutations(:one).id
    end

    assert_redirected_to salutations_path
  end
end
