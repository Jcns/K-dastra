require "application_system_test_case"

class GrupoCaracteristicasTest < ApplicationSystemTestCase
  setup do
    @grupo_caracteristica = grupo_caracteristicas(:one)
  end

  test "visiting the index" do
    visit grupo_caracteristicas_url
    assert_selector "h1", text: "Grupo Caracteristicas"
  end

  test "creating a Grupo caracteristica" do
    visit grupo_caracteristicas_url
    click_on "New Grupo Caracteristica"

    fill_in "Cadastro Produto", with: @grupo_caracteristica.cadastro_produto_id
    fill_in "Caracteristicas", with: @grupo_caracteristica.caracteristicas
    click_on "Create Grupo caracteristica"

    assert_text "Grupo caracteristica was successfully created"
    click_on "Back"
  end

  test "updating a Grupo caracteristica" do
    visit grupo_caracteristicas_url
    click_on "Edit", match: :first

    fill_in "Cadastro Produto", with: @grupo_caracteristica.cadastro_produto_id
    fill_in "Caracteristicas", with: @grupo_caracteristica.caracteristicas
    click_on "Update Grupo caracteristica"

    assert_text "Grupo caracteristica was successfully updated"
    click_on "Back"
  end

  test "destroying a Grupo caracteristica" do
    visit grupo_caracteristicas_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Grupo caracteristica was successfully destroyed"
  end
end
