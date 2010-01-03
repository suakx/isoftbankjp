require 'test_helper'

class AddressgroupsControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:addressgroups)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create addressgroup" do
    assert_difference('Addressgroup.count') do
      post :create, :addressgroup => { }
    end

    assert_redirected_to addressgroup_path(assigns(:addressgroup))
  end

  test "should show addressgroup" do
    get :show, :id => addressgroups(:one).id
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => addressgroups(:one).id
    assert_response :success
  end

  test "should update addressgroup" do
    put :update, :id => addressgroups(:one).id, :addressgroup => { }
    assert_redirected_to addressgroup_path(assigns(:addressgroup))
  end

  test "should destroy addressgroup" do
    assert_difference('Addressgroup.count', -1) do
      delete :destroy, :id => addressgroups(:one).id
    end

    assert_redirected_to addressgroups_path
  end
end
