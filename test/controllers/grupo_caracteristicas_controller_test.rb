require 'test_helper'

class GrupoCaracteristicasControllerTest < ActionDispatch::IntegrationTest
  setup do
    @grupo_caracteristica = grupo_caracteristicas(:one)
  end

  test "should get index" do
    get grupo_caracteristicas_url
    assert_response :success
  end

  test "should get new" do
    get new_grupo_caracteristica_url
    assert_response :success
  end

  test "should create grupo_caracteristica" do
    assert_difference('GrupoCaracteristica.count') do
      post grupo_caracteristicas_url, params: { grupo_caracteristica: { cadastro_produto_id: @grupo_caracteristica.cadastro_produto_id, caracteristicas: @grupo_caracteristica.caracteristicas } }
    end

    assert_redirected_to grupo_caracteristica_url(GrupoCaracteristica.last)
  end

  test "should show grupo_caracteristica" do
    get grupo_caracteristica_url(@grupo_caracteristica)
    assert_response :success
  end

  test "should get edit" do
    get edit_grupo_caracteristica_url(@grupo_caracteristica)
    assert_response :success
  end

  test "should update grupo_caracteristica" do
    patch grupo_caracteristica_url(@grupo_caracteristica), params: { grupo_caracteristica: { cadastro_produto_id: @grupo_caracteristica.cadastro_produto_id, caracteristicas: @grupo_caracteristica.caracteristicas } }
    assert_redirected_to grupo_caracteristica_url(@grupo_caracteristica)
  end

  test "should destroy grupo_caracteristica" do
    assert_difference('GrupoCaracteristica.count', -1) do
      delete grupo_caracteristica_url(@grupo_caracteristica)
    end

    assert_redirected_to grupo_caracteristicas_url
  end
end
