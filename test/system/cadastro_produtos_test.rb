require "application_system_test_case"

class CadastroProdutosTest < ApplicationSystemTestCase
  setup do
    @cadastro_produto = cadastro_produtos(:one)
  end

  test "visiting the index" do
    visit cadastro_produtos_url
    assert_selector "h1", text: "Cadastro Produtos"
  end

  test "creating a Cadastro produto" do
    visit cadastro_produtos_url
    click_on "New Cadastro Produto"

    fill_in "Categoria Produto", with: @cadastro_produto.categoria_produto
    fill_in "Produto", with: @cadastro_produto.produto
    click_on "Create Cadastro produto"

    assert_text "Cadastro produto was successfully created"
    click_on "Back"
  end

  test "updating a Cadastro produto" do
    visit cadastro_produtos_url
    click_on "Edit", match: :first

    fill_in "Categoria Produto", with: @cadastro_produto.categoria_produto
    fill_in "Produto", with: @cadastro_produto.produto
    click_on "Update Cadastro produto"

    assert_text "Cadastro produto was successfully updated"
    click_on "Back"
  end

  test "destroying a Cadastro produto" do
    visit cadastro_produtos_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Cadastro produto was successfully destroyed"
  end
end
