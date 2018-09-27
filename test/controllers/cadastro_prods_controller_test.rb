require 'test_helper'

class CadastroProdsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @cadastro_prod = cadastro_prods(:one)
  end

  test "should get index" do
    get cadastro_prods_url
    assert_response :success
  end

  test "should get new" do
    get new_cadastro_prod_url
    assert_response :success
  end

  test "should create cadastro_prod" do
    assert_difference('CadastroProd.count') do
      post cadastro_prods_url, params: { cadastro_prod: { categoria: @cadastro_prod.categoria, info: @cadastro_prod.info, preco: @cadastro_prod.preco, produto: @cadastro_prod.produto } }
    end

    assert_redirected_to cadastro_prod_url(CadastroProd.last)
  end

  test "should show cadastro_prod" do
    get cadastro_prod_url(@cadastro_prod)
    assert_response :success
  end

  test "should get edit" do
    get edit_cadastro_prod_url(@cadastro_prod)
    assert_response :success
  end

  test "should update cadastro_prod" do
    patch cadastro_prod_url(@cadastro_prod), params: { cadastro_prod: { categoria: @cadastro_prod.categoria, info: @cadastro_prod.info, preco: @cadastro_prod.preco, produto: @cadastro_prod.produto } }
    assert_redirected_to cadastro_prod_url(@cadastro_prod)
  end

  test "should destroy cadastro_prod" do
    assert_difference('CadastroProd.count', -1) do
      delete cadastro_prod_url(@cadastro_prod)
    end

    assert_redirected_to cadastro_prods_url
  end
end
