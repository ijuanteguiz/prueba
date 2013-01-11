require 'test_helper'

class ParteContenidosControllerTest < ActionController::TestCase
  setup do
    @parte_contenido = parte_contenidos(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:parte_contenidos)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create parte_contenido" do
    assert_difference('ParteContenido.count') do
      post :create, parte_contenido: @parte_contenido.attributes
    end

    assert_redirected_to parte_contenido_path(assigns(:parte_contenido))
  end

  test "should show parte_contenido" do
    get :show, id: @parte_contenido
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @parte_contenido
    assert_response :success
  end

  test "should update parte_contenido" do
    put :update, id: @parte_contenido, parte_contenido: @parte_contenido.attributes
    assert_redirected_to parte_contenido_path(assigns(:parte_contenido))
  end

  test "should destroy parte_contenido" do
    assert_difference('ParteContenido.count', -1) do
      delete :destroy, id: @parte_contenido
    end

    assert_redirected_to parte_contenidos_path
  end
end
