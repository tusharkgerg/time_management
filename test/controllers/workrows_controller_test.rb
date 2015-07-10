require 'test_helper'

class WorkrowsControllerTest < ActionController::TestCase
  setup do
    @workrow = workrows(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:workrows)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create workrow" do
    assert_difference('Workrow.count') do
      post :create, workrow: { date: @workrow.date, hours_worked: @workrow.hours_worked, notes: @workrow.notes, task: @workrow.task }
    end

    assert_redirected_to workrow_path(assigns(:workrow))
  end

  test "should show workrow" do
    get :show, id: @workrow
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @workrow
    assert_response :success
  end

  test "should update workrow" do
    patch :update, id: @workrow, workrow: { date: @workrow.date, hours_worked: @workrow.hours_worked, notes: @workrow.notes, task: @workrow.task }
    assert_redirected_to workrow_path(assigns(:workrow))
  end

  test "should destroy workrow" do
    assert_difference('Workrow.count', -1) do
      delete :destroy, id: @workrow
    end

    assert_redirected_to workrows_path
  end
end
