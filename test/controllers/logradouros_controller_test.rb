require 'test_helper'

class LogradourosControllerTest < ActionController::TestCase
  setup do
    @logradouro = logradouros(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:logradouros)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create logradouro" do
    assert_difference('Logradouro.count') do
      post :create, logradouro: { cep: @logradouro.cep, nome: @logradouro.nome, num_fim: @logradouro.num_fim, num_inicio: @logradouro.num_inicio }
    end

    assert_redirected_to logradouro_path(assigns(:logradouro))
  end

  test "should show logradouro" do
    get :show, id: @logradouro
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @logradouro
    assert_response :success
  end

  test "should update logradouro" do
    patch :update, id: @logradouro, logradouro: { cep: @logradouro.cep, nome: @logradouro.nome, num_fim: @logradouro.num_fim, num_inicio: @logradouro.num_inicio }
    assert_redirected_to logradouro_path(assigns(:logradouro))
  end

  test "should destroy logradouro" do
    assert_difference('Logradouro.count', -1) do
      delete :destroy, id: @logradouro
    end

    assert_redirected_to logradouros_path
  end
end
