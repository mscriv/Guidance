require 'test_helper'

class DiplomasControllerTest < ActionController::TestCase
  setup do
    @diploma = diplomas(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:diplomas)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create diploma" do
    assert_difference('Diploma.count') do
      post :create, diploma: { name: @diploma.name, requirement_id: @diploma.requirement_id }
    end

    assert_redirected_to diploma_path(assigns(:diploma))
  end

  test "should show diploma" do
    get :show, id: @diploma
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @diploma
    assert_response :success
  end

  test "should update diploma" do
    patch :update, id: @diploma, diploma: { name: @diploma.name, requirement_id: @diploma.requirement_id }
    assert_redirected_to diploma_path(assigns(:diploma))
  end

  test "should destroy diploma" do
    assert_difference('Diploma.count', -1) do
      delete :destroy, id: @diploma
    end

    assert_redirected_to diplomas_path
  end
end
