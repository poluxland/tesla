require "test_helper"

class EquiposControllerTest < ActionDispatch::IntegrationTest
  setup do
    @equipo = equipos(:one)
  end

  test "should get index" do
    get equipos_url
    assert_response :success
  end

  test "should get new" do
    get new_equipo_url
    assert_response :success
  end

  test "should create equipo" do
    assert_difference("Equipo.count") do
      post equipos_url, params: { equipo: { codigo: @equipo.codigo, contacto: @equipo.contacto, observaciones: @equipo.observaciones, otros: @equipo.otros, sucursale_id: @equipo.sucursale_id, tipo: @equipo.tipo, unidad: @equipo.unidad } }
    end

    assert_redirected_to equipo_url(Equipo.last)
  end

  test "should show equipo" do
    get equipo_url(@equipo)
    assert_response :success
  end

  test "should get edit" do
    get edit_equipo_url(@equipo)
    assert_response :success
  end

  test "should update equipo" do
    patch equipo_url(@equipo), params: { equipo: { codigo: @equipo.codigo, contacto: @equipo.contacto, observaciones: @equipo.observaciones, otros: @equipo.otros, sucursale_id: @equipo.sucursale_id, tipo: @equipo.tipo, unidad: @equipo.unidad } }
    assert_redirected_to equipo_url(@equipo)
  end

  test "should destroy equipo" do
    assert_difference("Equipo.count", -1) do
      delete equipo_url(@equipo)
    end

    assert_redirected_to equipos_url
  end
end
