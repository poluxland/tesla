require "application_system_test_case"

class ReportesTest < ApplicationSystemTestCase
  setup do
    @reporte = reportes(:one)
  end

  test "visiting the index" do
    visit reportes_url
    assert_selector "h1", text: "Reportes"
  end

  test "should create reporte" do
    visit reportes_url
    click_on "New reporte"

    fill_in "A1", with: @reporte.a1
    fill_in "A2", with: @reporte.a2
    fill_in "A3", with: @reporte.a3
    fill_in "A4", with: @reporte.a4
    fill_in "Aislacion", with: @reporte.aislacion
    fill_in "Alarmas", with: @reporte.alarmas
    fill_in "B1", with: @reporte.b1
    fill_in "B2", with: @reporte.b2
    fill_in "B3", with: @reporte.b3
    fill_in "Bases", with: @reporte.bases
    fill_in "Cable poder f1", with: @reporte.cable_poder_f1
    fill_in "Cable poder f2", with: @reporte.cable_poder_f2
    fill_in "Cable poder f3", with: @reporte.cable_poder_f3
    fill_in "Cable poder m", with: @reporte.cable_poder_m
    fill_in "Cables", with: @reporte.cables
    fill_in "Calefactor f1", with: @reporte.calefactor_f1
    fill_in "Calefactor f2", with: @reporte.calefactor_f2
    fill_in "Calefactor f3", with: @reporte.calefactor_f3
    fill_in "Calefactor m", with: @reporte.calefactor_m
    fill_in "Carcasa", with: @reporte.carcasa
    fill_in "Chiller caudal retorno", with: @reporte.chiller_caudal_retorno
    fill_in "Chiller caudal suministrado", with: @reporte.chiller_caudal_suministrado
    fill_in "Chiller presion agua", with: @reporte.chiller_presion_agua
    fill_in "Chiller presion agua retorno", with: @reporte.chiller_presion_agua_retorno
    fill_in "Chiller t agua retorno", with: @reporte.chiller_t_agua_retorno
    fill_in "Chiller t agua suministrada", with: @reporte.chiller_t_agua_suministrada
    fill_in "Cliente", with: @reporte.cliente_id
    fill_in "Coigo qr", with: @reporte.coigo_qr
    fill_in "Compresor", with: @reporte.compresor
    fill_in "Compresor f1", with: @reporte.compresor_f1
    fill_in "Compresor f2", with: @reporte.compresor_f2
    fill_in "Compresor f3", with: @reporte.compresor_f3
    fill_in "Compresor m", with: @reporte.compresor_m
    fill_in "Condensador", with: @reporte.condensador
    fill_in "Conecciones", with: @reporte.conecciones
    fill_in "Correas", with: @reporte.correas
    fill_in "Corrosion", with: @reporte.corrosion
    fill_in "Detalle", with: @reporte.detalle
    fill_in "Direccion de ventiladores", with: @reporte.direccion_de_ventiladores
    fill_in "Enchufes", with: @reporte.enchufes
    fill_in "Equipo", with: @reporte.equipo_id
    fill_in "Estructura", with: @reporte.estructura
    fill_in "Evaporador", with: @reporte.evaporador
    fill_in "Fecha", with: @reporte.fecha
    fill_in "Filtro de aire", with: @reporte.filtro_de_aire
    fill_in "Firma solicitante", with: @reporte.firma_solicitante
    fill_in "Firma tecnico", with: @reporte.firma_tecnico
    fill_in "Imagen 1", with: @reporte.imagen_1
    fill_in "Imagen 2", with: @reporte.imagen_2
    fill_in "Imagen 3", with: @reporte.imagen_3
    fill_in "Insumos repuestos", with: @reporte.insumos_repuestos
    fill_in "Linea refrigerante", with: @reporte.linea_refrigerante
    fill_in "Lubricacion", with: @reporte.lubricacion
    fill_in "Luces e indicadores", with: @reporte.luces_e_indicadores
    fill_in "Nivel de aceite", with: @reporte.nivel_de_aceite
    fill_in "Nivel de refrigerante", with: @reporte.nivel_de_refrigerante
    fill_in "Otros", with: @reporte.otros
    fill_in "Partida normal", with: @reporte.partida_normal
    fill_in "Presion de descarga", with: @reporte.presion_de_descarga
    fill_in "Presion de succion", with: @reporte.presion_de_succion
    fill_in "Pruebas de funcionamiento", with: @reporte.pruebas_de_funcionamiento
    fill_in "Servicio", with: @reporte.servicio
    fill_in "Sobrecalentamiento", with: @reporte.sobrecalentamiento
    fill_in "Sobrecalor", with: @reporte.sobrecalor
    fill_in "Sucursale", with: @reporte.sucursale_id
    fill_in "Tarjeta de control", with: @reporte.tarjeta_de_control
    fill_in "Tension total f1", with: @reporte.tension_total_f1
    fill_in "Tension total f2", with: @reporte.tension_total_f2
    fill_in "Tension total f3", with: @reporte.tension_total_f3
    fill_in "Tension total m", with: @reporte.tension_total_m
    fill_in "Ventilador compresor f1", with: @reporte.ventilador_compresor_f1
    fill_in "Ventilador compresor f2", with: @reporte.ventilador_compresor_f2
    fill_in "Ventilador compresor f3", with: @reporte.ventilador_compresor_f3
    fill_in "Ventilador compresor m", with: @reporte.ventilador_compresor_m
    fill_in "Ventilador evapodar f3", with: @reporte.ventilador_evapodar_f3
    fill_in "Ventilador evaporador inyeccion f1", with: @reporte.ventilador_evaporador_inyeccion_f1
    fill_in "Ventilador evaporador inyeccion f2", with: @reporte.ventilador_evaporador_inyeccion_f2
    fill_in "Ventilador evaporador m", with: @reporte.ventilador_evaporador_m
    fill_in "Ventilador retorno f1", with: @reporte.ventilador_retorno_f1
    fill_in "Ventilador retorno f2", with: @reporte.ventilador_retorno_f2
    fill_in "Ventilador retorno f3", with: @reporte.ventilador_retorno_f3
    fill_in "Ventilador retorno m", with: @reporte.ventilador_retorno_m
    fill_in "Ventiladores", with: @reporte.ventiladores
    fill_in "Vibraciones y ruido", with: @reporte.vibraciones_y_ruido
    click_on "Create Reporte"

    assert_text "Reporte was successfully created"
    click_on "Back"
  end

  test "should update Reporte" do
    visit reporte_url(@reporte)
    click_on "Edit this reporte", match: :first

    fill_in "A1", with: @reporte.a1
    fill_in "A2", with: @reporte.a2
    fill_in "A3", with: @reporte.a3
    fill_in "A4", with: @reporte.a4
    fill_in "Aislacion", with: @reporte.aislacion
    fill_in "Alarmas", with: @reporte.alarmas
    fill_in "B1", with: @reporte.b1
    fill_in "B2", with: @reporte.b2
    fill_in "B3", with: @reporte.b3
    fill_in "Bases", with: @reporte.bases
    fill_in "Cable poder f1", with: @reporte.cable_poder_f1
    fill_in "Cable poder f2", with: @reporte.cable_poder_f2
    fill_in "Cable poder f3", with: @reporte.cable_poder_f3
    fill_in "Cable poder m", with: @reporte.cable_poder_m
    fill_in "Cables", with: @reporte.cables
    fill_in "Calefactor f1", with: @reporte.calefactor_f1
    fill_in "Calefactor f2", with: @reporte.calefactor_f2
    fill_in "Calefactor f3", with: @reporte.calefactor_f3
    fill_in "Calefactor m", with: @reporte.calefactor_m
    fill_in "Carcasa", with: @reporte.carcasa
    fill_in "Chiller caudal retorno", with: @reporte.chiller_caudal_retorno
    fill_in "Chiller caudal suministrado", with: @reporte.chiller_caudal_suministrado
    fill_in "Chiller presion agua", with: @reporte.chiller_presion_agua
    fill_in "Chiller presion agua retorno", with: @reporte.chiller_presion_agua_retorno
    fill_in "Chiller t agua retorno", with: @reporte.chiller_t_agua_retorno
    fill_in "Chiller t agua suministrada", with: @reporte.chiller_t_agua_suministrada
    fill_in "Cliente", with: @reporte.cliente_id
    fill_in "Coigo qr", with: @reporte.coigo_qr
    fill_in "Compresor", with: @reporte.compresor
    fill_in "Compresor f1", with: @reporte.compresor_f1
    fill_in "Compresor f2", with: @reporte.compresor_f2
    fill_in "Compresor f3", with: @reporte.compresor_f3
    fill_in "Compresor m", with: @reporte.compresor_m
    fill_in "Condensador", with: @reporte.condensador
    fill_in "Conecciones", with: @reporte.conecciones
    fill_in "Correas", with: @reporte.correas
    fill_in "Corrosion", with: @reporte.corrosion
    fill_in "Detalle", with: @reporte.detalle
    fill_in "Direccion de ventiladores", with: @reporte.direccion_de_ventiladores
    fill_in "Enchufes", with: @reporte.enchufes
    fill_in "Equipo", with: @reporte.equipo_id
    fill_in "Estructura", with: @reporte.estructura
    fill_in "Evaporador", with: @reporte.evaporador
    fill_in "Fecha", with: @reporte.fecha
    fill_in "Filtro de aire", with: @reporte.filtro_de_aire
    fill_in "Firma solicitante", with: @reporte.firma_solicitante
    fill_in "Firma tecnico", with: @reporte.firma_tecnico
    fill_in "Imagen 1", with: @reporte.imagen_1
    fill_in "Imagen 2", with: @reporte.imagen_2
    fill_in "Imagen 3", with: @reporte.imagen_3
    fill_in "Insumos repuestos", with: @reporte.insumos_repuestos
    fill_in "Linea refrigerante", with: @reporte.linea_refrigerante
    fill_in "Lubricacion", with: @reporte.lubricacion
    fill_in "Luces e indicadores", with: @reporte.luces_e_indicadores
    fill_in "Nivel de aceite", with: @reporte.nivel_de_aceite
    fill_in "Nivel de refrigerante", with: @reporte.nivel_de_refrigerante
    fill_in "Otros", with: @reporte.otros
    fill_in "Partida normal", with: @reporte.partida_normal
    fill_in "Presion de descarga", with: @reporte.presion_de_descarga
    fill_in "Presion de succion", with: @reporte.presion_de_succion
    fill_in "Pruebas de funcionamiento", with: @reporte.pruebas_de_funcionamiento
    fill_in "Servicio", with: @reporte.servicio
    fill_in "Sobrecalentamiento", with: @reporte.sobrecalentamiento
    fill_in "Sobrecalor", with: @reporte.sobrecalor
    fill_in "Sucursale", with: @reporte.sucursale_id
    fill_in "Tarjeta de control", with: @reporte.tarjeta_de_control
    fill_in "Tension total f1", with: @reporte.tension_total_f1
    fill_in "Tension total f2", with: @reporte.tension_total_f2
    fill_in "Tension total f3", with: @reporte.tension_total_f3
    fill_in "Tension total m", with: @reporte.tension_total_m
    fill_in "Ventilador compresor f1", with: @reporte.ventilador_compresor_f1
    fill_in "Ventilador compresor f2", with: @reporte.ventilador_compresor_f2
    fill_in "Ventilador compresor f3", with: @reporte.ventilador_compresor_f3
    fill_in "Ventilador compresor m", with: @reporte.ventilador_compresor_m
    fill_in "Ventilador evapodar f3", with: @reporte.ventilador_evapodar_f3
    fill_in "Ventilador evaporador inyeccion f1", with: @reporte.ventilador_evaporador_inyeccion_f1
    fill_in "Ventilador evaporador inyeccion f2", with: @reporte.ventilador_evaporador_inyeccion_f2
    fill_in "Ventilador evaporador m", with: @reporte.ventilador_evaporador_m
    fill_in "Ventilador retorno f1", with: @reporte.ventilador_retorno_f1
    fill_in "Ventilador retorno f2", with: @reporte.ventilador_retorno_f2
    fill_in "Ventilador retorno f3", with: @reporte.ventilador_retorno_f3
    fill_in "Ventilador retorno m", with: @reporte.ventilador_retorno_m
    fill_in "Ventiladores", with: @reporte.ventiladores
    fill_in "Vibraciones y ruido", with: @reporte.vibraciones_y_ruido
    click_on "Update Reporte"

    assert_text "Reporte was successfully updated"
    click_on "Back"
  end

  test "should destroy Reporte" do
    visit reporte_url(@reporte)
    click_on "Destroy this reporte", match: :first

    assert_text "Reporte was successfully destroyed"
  end
end
