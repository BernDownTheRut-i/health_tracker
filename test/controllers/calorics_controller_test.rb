require 'test_helper'

class CaloricsControllerTest < ActionController::TestCase
  setup do
    @caloric = calorics(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:calorics)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create caloric" do
    assert_difference('Caloric.count') do
      post :create, caloric: { date: @caloric.date, numer: @caloric.numer }
    end

    assert_redirected_to caloric_path(assigns(:caloric))
  end

  test "should show caloric" do
    get :show, id: @caloric
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @caloric
    assert_response :success
  end

  test "should update caloric" do
    patch :update, id: @caloric, caloric: { date: @caloric.date, numer: @caloric.numer }
    assert_redirected_to caloric_path(assigns(:caloric))
  end

  test "should destroy caloric" do
    assert_difference('Caloric.count', -1) do
      delete :destroy, id: @caloric
    end

    assert_redirected_to calorics_path
  end
end
