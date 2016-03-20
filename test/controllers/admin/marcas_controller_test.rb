require 'test_helper'

class Admin::MarcasControllerTest < ActionController::TestCase
  setup do
    @admin_marca = admin_marcas(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:admin_marcas)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create admin_marca" do
    assert_difference('Admin::Marca.count') do
      post :create, admin_marca: { nombre: @admin_marca.nombre }
    end

    assert_redirected_to admin_marca_path(assigns(:admin_marca))
  end

  test "should show admin_marca" do
    get :show, id: @admin_marca
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @admin_marca
    assert_response :success
  end

  test "should update admin_marca" do
    patch :update, id: @admin_marca, admin_marca: { nombre: @admin_marca.nombre }
    assert_redirected_to admin_marca_path(assigns(:admin_marca))
  end

  test "should destroy admin_marca" do
    assert_difference('Admin::Marca.count', -1) do
      delete :destroy, id: @admin_marca
    end

    assert_redirected_to admin_marcas_path
  end
end
