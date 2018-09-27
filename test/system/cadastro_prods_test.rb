require "application_system_test_case"

class CadastroProdsTest < ApplicationSystemTestCase
  setup do
    @cadastro_prod = cadastro_prods(:one)
  end

  test "visiting the index" do
    visit cadastro_prods_url
    assert_selector "h1", text: "Cadastro Prods"
  end

  test "creating a Cadastro prod" do
    visit cadastro_prods_url
    click_on "New Cadastro Prod"

    fill_in "Categoria", with: @cadastro_prod.categoria
    fill_in "Info", with: @cadastro_prod.info
    fill_in "Preco", with: @cadastro_prod.preco
    fill_in "Produto", with: @cadastro_prod.produto
    click_on "Create Cadastro prod"

    assert_text "Cadastro prod was successfully created"
    click_on "Back"
  end

  test "updating a Cadastro prod" do
    visit cadastro_prods_url
    click_on "Edit", match: :first

    fill_in "Categoria", with: @cadastro_prod.categoria
    fill_in "Info", with: @cadastro_prod.info
    fill_in "Preco", with: @cadastro_prod.preco
    fill_in "Produto", with: @cadastro_prod.produto
    click_on "Update Cadastro prod"

    assert_text "Cadastro prod was successfully updated"
    click_on "Back"
  end

  test "destroying a Cadastro prod" do
    visit cadastro_prods_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Cadastro prod was successfully destroyed"
  end
end
