require 'test_helper'

class PiratesControllerTest < ActionController::TestCase
  setup do
    @pirate = pirates(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:pirates)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create pirate" do
    assert_difference('Pirate.count') do
      post :create, pirate: { description: @pirate.description, name: @pirate.name, ship: @pirate.ship }
    end

    assert_redirected_to pirate_path(assigns(:pirate))
  end

  test "should show pirate" do
    get :show, id: @pirate
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @pirate
    assert_response :success
  end

  test "should update pirate" do
    patch :update, id: @pirate, pirate: { description: @pirate.description, name: @pirate.name, ship: @pirate.ship }
    assert_redirected_to pirate_path(assigns(:pirate))
  end

  test "should destroy pirate" do
    assert_difference('Pirate.count', -1) do
      delete :destroy, id: @pirate
    end

    assert_redirected_to pirates_path
  end
end
