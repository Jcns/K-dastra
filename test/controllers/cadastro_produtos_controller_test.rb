require 'test_helper'

class CadastroProdutosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @cadastro_produto = cadastro_produtos(:one)
  end

  test "should get index" do
    get cadastro_produtos_url
    assert_response :success
  end

  test "should get new" do
    get new_cadastro_produto_url
    assert_response :success
  end

  test "should create cadastro_produto" do
    assert_difference('CadastroProduto.count') do
      post cadastro_produtos_url, params: { cadastro_produto: { categoria_produto: @cadastro_produto.categoria_produto, produto: @cadastro_produto.produto } }
    end

    assert_redirected_to cadastro_produto_url(CadastroProduto.last)
  end

  test "should show cadastro_produto" do
    get cadastro_produto_url(@cadastro_produto)
    assert_response :success
  end

  test "should get edit" do
    get edit_cadastro_produto_url(@cadastro_produto)
    assert_response :success
  end

  test "should update cadastro_produto" do
    patch cadastro_produto_url(@cadastro_produto), params: { cadastro_produto: { categoria_produto: @cadastro_produto.categoria_produto, produto: @cadastro_produto.produto } }
    assert_redirected_to cadastro_produto_url(@cadastro_produto)
  end

  test "should destroy cadastro_produto" do
    assert_difference('CadastroProduto.count', -1) do
      delete cadastro_produto_url(@cadastro_produto)
    end

    assert_redirected_to cadastro_produtos_url
  end
end
