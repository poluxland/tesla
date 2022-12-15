require "application_system_test_case"

class EquiposTest < ApplicationSystemTestCase
  setup do
    @equipo = equipos(:one)
  end

  test "visiting the index" do
    visit equipos_url
    assert_selector "h1", text: "Equipos"
  end

  test "should create equipo" do
    visit equipos_url
    click_on "New equipo"

    fill_in "Codigo", with: @equipo.codigo
    fill_in "Contacto", with: @equipo.contacto
    fill_in "Observaciones", with: @equipo.observaciones
    fill_in "Otros", with: @equipo.otros
    fill_in "Sucursale", with: @equipo.sucursale_id
    fill_in "Tipo", with: @equipo.tipo
    fill_in "Unidad", with: @equipo.unidad
    click_on "Create Equipo"

    assert_text "Equipo was successfully created"
    click_on "Back"
  end

  test "should update Equipo" do
    visit equipo_url(@equipo)
    click_on "Edit this equipo", match: :first

    fill_in "Codigo", with: @equipo.codigo
    fill_in "Contacto", with: @equipo.contacto
    fill_in "Observaciones", with: @equipo.observaciones
    fill_in "Otros", with: @equipo.otros
    fill_in "Sucursale", with: @equipo.sucursale_id
    fill_in "Tipo", with: @equipo.tipo
    fill_in "Unidad", with: @equipo.unidad
    click_on "Update Equipo"

    assert_text "Equipo was successfully updated"
    click_on "Back"
  end

  test "should destroy Equipo" do
    visit equipo_url(@equipo)
    click_on "Destroy this equipo", match: :first

    assert_text "Equipo was successfully destroyed"
  end
end
