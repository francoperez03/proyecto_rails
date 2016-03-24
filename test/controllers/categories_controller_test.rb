require 'test_helper'

class CategoriesControllerTest < ActionController::TestCase
  test "should get index_c" do
    get :index_c
    assert_response :success
  end

  test "should get show_c" do
    get :show_c
    assert_response :success
  end

end
