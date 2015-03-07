require 'test_helper'

class BooksControllerTest < ActionController::TestCase
  setup do
    @book = books(:one)
  end

  test "should get index" do
    
    get :index
    assert_response :success
    assert_not_nil assigns(:books)
  end

  test "should get new" do
    sign_in users(:one)
    get :new
    assert_response :success
  end

  

  test "should show book" do
    sign_in users(:one)
    get :show, id: @book
    assert_response :success
  end

  test "should get edit" do
    sign_in users(:one)
    get :edit, id: @book
    assert_response :success
  end

  

  test "should destroy book" do
    sign_in users(:one)
    assert_difference('Book.count', -1) do
      delete :destroy, id: @book
    end

    assert_redirected_to books_path
  end
end
