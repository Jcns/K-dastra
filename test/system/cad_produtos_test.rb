require "application_system_test_case"

class CadProdutosTest < ApplicationSystemTestCase
  setup do
    @cad_produto = cad_produtos(:one)
  end

  test "visiting the index" do
    visit cad_produtos_url
    assert_selector "h1", text: "Cad Produtos"
  end

  test "creating a Cad produto" do
    visit cad_produtos_url
    click_on "New Cad Produto"

    fill_in "Caracteristica", with: @cad_produto.caracteristica
    fill_in "Categoria", with: @cad_produto.categoria
    fill_in "Produto", with: @cad_produto.produto
    fill_in "User", with: @cad_produto.user_id
    click_on "Create Cad produto"

    assert_text "Cad produto was successfully created"
    click_on "Back"
  end

  test "updating a Cad produto" do
    visit cad_produtos_url
    click_on "Edit", match: :first

    fill_in "Caracteristica", with: @cad_produto.caracteristica
    fill_in "Categoria", with: @cad_produto.categoria
    fill_in "Produto", with: @cad_produto.produto
    fill_in "User", with: @cad_produto.user_id
    click_on "Update Cad produto"

    assert_text "Cad produto was successfully updated"
    click_on "Back"
  end

  test "destroying a Cad produto" do
    visit cad_produtos_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Cad produto was successfully destroyed"
  end
end
