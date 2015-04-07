require 'test_helper'

class TodosControllerTest < ActionController::TestCase
  setup do
    @todo = todos(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:todos)
  end

  test "should create todo" do
    assert_difference('Todo.count') do
      post :create, todo: { iscompleted: @todo.iscompleted, name: @todo.name }
    end

    assert_response 201
  end

  test "should show todo" do
    get :show, id: @todo
    assert_response :success
  end

  test "should update todo" do
    put :update, id: @todo, todo: { iscompleted: @todo.iscompleted, name: @todo.name }
    assert_response 204
  end

  test "should destroy todo" do
    assert_difference('Todo.count', -1) do
      delete :destroy, id: @todo
    end

    assert_response 204
  end
end
