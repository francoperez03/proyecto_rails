require 'test_helper'

class MarcasControllerTest < ActionController::TestCase
  test "should get index_m" do
    get :index_m
    assert_response :success
  end

  test "should get show_m" do
    get :show_m
    assert_response :success
  end

end
