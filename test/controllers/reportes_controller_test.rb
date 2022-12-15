require "test_helper"

class ReportesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @reporte = reportes(:one)
  end

  test "should get index" do
    get reportes_url
    assert_response :success
  end

  test "should get new" do
    get new_reporte_url
    assert_response :success
  end

  test "should create reporte" do
    assert_difference("Reporte.count") do
      post reportes_url, params: { reporte: { a1: @reporte.a1, a2: @reporte.a2, a3: @reporte.a3, a4: @reporte.a4, aislacion: @reporte.aislacion, alarmas: @reporte.alarmas, b1: @reporte.b1, b2: @reporte.b2, b3: @reporte.b3, bases: @reporte.bases, cable_poder_f1: @reporte.cable_poder_f1, cable_poder_f2: @reporte.cable_poder_f2, cable_poder_f3: @reporte.cable_poder_f3, cable_poder_m: @reporte.cable_poder_m, cables: @reporte.cables, calefactor_f1: @reporte.calefactor_f1, calefactor_f2: @reporte.calefactor_f2, calefactor_f3: @reporte.calefactor_f3, calefactor_m: @reporte.calefactor_m, carcasa: @reporte.carcasa, chiller_caudal_retorno: @reporte.chiller_caudal_retorno, chiller_caudal_suministrado: @reporte.chiller_caudal_suministrado, chiller_presion_agua: @reporte.chiller_presion_agua, chiller_presion_agua_retorno: @reporte.chiller_presion_agua_retorno, chiller_t_agua_retorno: @reporte.chiller_t_agua_retorno, chiller_t_agua_suministrada: @reporte.chiller_t_agua_suministrada, cliente_id: @reporte.cliente_id, coigo_qr: @reporte.coigo_qr, compresor: @reporte.compresor, compresor_f1: @reporte.compresor_f1, compresor_f2: @reporte.compresor_f2, compresor_f3: @reporte.compresor_f3, compresor_m: @reporte.compresor_m, condensador: @reporte.condensador, conecciones: @reporte.conecciones, correas: @reporte.correas, corrosion: @reporte.corrosion, detalle: @reporte.detalle, direccion_de_ventiladores: @reporte.direccion_de_ventiladores, enchufes: @reporte.enchufes, equipo_id: @reporte.equipo_id, estructura: @reporte.estructura, evaporador: @reporte.evaporador, fecha: @reporte.fecha, filtro_de_aire: @reporte.filtro_de_aire, firma_solicitante: @reporte.firma_solicitante, firma_tecnico: @reporte.firma_tecnico, imagen_1: @reporte.imagen_1, imagen_2: @reporte.imagen_2, imagen_3: @reporte.imagen_3, insumos_repuestos: @reporte.insumos_repuestos, linea_refrigerante: @reporte.linea_refrigerante, lubricacion: @reporte.lubricacion, luces_e_indicadores: @reporte.luces_e_indicadores, nivel_de_aceite: @reporte.nivel_de_aceite, nivel_de_refrigerante: @reporte.nivel_de_refrigerante, otros: @reporte.otros, partida_normal: @reporte.partida_normal, presion_de_descarga: @reporte.presion_de_descarga, presion_de_succion: @reporte.presion_de_succion, pruebas_de_funcionamiento: @reporte.pruebas_de_funcionamiento, servicio: @reporte.servicio, sobrecalentamiento: @reporte.sobrecalentamiento, sobrecalor: @reporte.sobrecalor, sucursale_id: @reporte.sucursale_id, tarjeta_de_control: @reporte.tarjeta_de_control, tension_total_f1: @reporte.tension_total_f1, tension_total_f2: @reporte.tension_total_f2, tension_total_f3: @reporte.tension_total_f3, tension_total_m: @reporte.tension_total_m, ventilador_compresor_f1: @reporte.ventilador_compresor_f1, ventilador_compresor_f2: @reporte.ventilador_compresor_f2, ventilador_compresor_f3: @reporte.ventilador_compresor_f3, ventilador_compresor_m: @reporte.ventilador_compresor_m, ventilador_evapodar_f3: @reporte.ventilador_evapodar_f3, ventilador_evaporador_inyeccion_f1: @reporte.ventilador_evaporador_inyeccion_f1, ventilador_evaporador_inyeccion_f2: @reporte.ventilador_evaporador_inyeccion_f2, ventilador_evaporador_m: @reporte.ventilador_evaporador_m, ventilador_retorno_f1: @reporte.ventilador_retorno_f1, ventilador_retorno_f2: @reporte.ventilador_retorno_f2, ventilador_retorno_f3: @reporte.ventilador_retorno_f3, ventilador_retorno_m: @reporte.ventilador_retorno_m, ventiladores: @reporte.ventiladores, vibraciones_y_ruido: @reporte.vibraciones_y_ruido } }
    end

    assert_redirected_to reporte_url(Reporte.last)
  end

  test "should show reporte" do
    get reporte_url(@reporte)
    assert_response :success
  end

  test "should get edit" do
    get edit_reporte_url(@reporte)
    assert_response :success
  end

  test "should update reporte" do
    patch reporte_url(@reporte), params: { reporte: { a1: @reporte.a1, a2: @reporte.a2, a3: @reporte.a3, a4: @reporte.a4, aislacion: @reporte.aislacion, alarmas: @reporte.alarmas, b1: @reporte.b1, b2: @reporte.b2, b3: @reporte.b3, bases: @reporte.bases, cable_poder_f1: @reporte.cable_poder_f1, cable_poder_f2: @reporte.cable_poder_f2, cable_poder_f3: @reporte.cable_poder_f3, cable_poder_m: @reporte.cable_poder_m, cables: @reporte.cables, calefactor_f1: @reporte.calefactor_f1, calefactor_f2: @reporte.calefactor_f2, calefactor_f3: @reporte.calefactor_f3, calefactor_m: @reporte.calefactor_m, carcasa: @reporte.carcasa, chiller_caudal_retorno: @reporte.chiller_caudal_retorno, chiller_caudal_suministrado: @reporte.chiller_caudal_suministrado, chiller_presion_agua: @reporte.chiller_presion_agua, chiller_presion_agua_retorno: @reporte.chiller_presion_agua_retorno, chiller_t_agua_retorno: @reporte.chiller_t_agua_retorno, chiller_t_agua_suministrada: @reporte.chiller_t_agua_suministrada, cliente_id: @reporte.cliente_id, coigo_qr: @reporte.coigo_qr, compresor: @reporte.compresor, compresor_f1: @reporte.compresor_f1, compresor_f2: @reporte.compresor_f2, compresor_f3: @reporte.compresor_f3, compresor_m: @reporte.compresor_m, condensador: @reporte.condensador, conecciones: @reporte.conecciones, correas: @reporte.correas, corrosion: @reporte.corrosion, detalle: @reporte.detalle, direccion_de_ventiladores: @reporte.direccion_de_ventiladores, enchufes: @reporte.enchufes, equipo_id: @reporte.equipo_id, estructura: @reporte.estructura, evaporador: @reporte.evaporador, fecha: @reporte.fecha, filtro_de_aire: @reporte.filtro_de_aire, firma_solicitante: @reporte.firma_solicitante, firma_tecnico: @reporte.firma_tecnico, imagen_1: @reporte.imagen_1, imagen_2: @reporte.imagen_2, imagen_3: @reporte.imagen_3, insumos_repuestos: @reporte.insumos_repuestos, linea_refrigerante: @reporte.linea_refrigerante, lubricacion: @reporte.lubricacion, luces_e_indicadores: @reporte.luces_e_indicadores, nivel_de_aceite: @reporte.nivel_de_aceite, nivel_de_refrigerante: @reporte.nivel_de_refrigerante, otros: @reporte.otros, partida_normal: @reporte.partida_normal, presion_de_descarga: @reporte.presion_de_descarga, presion_de_succion: @reporte.presion_de_succion, pruebas_de_funcionamiento: @reporte.pruebas_de_funcionamiento, servicio: @reporte.servicio, sobrecalentamiento: @reporte.sobrecalentamiento, sobrecalor: @reporte.sobrecalor, sucursale_id: @reporte.sucursale_id, tarjeta_de_control: @reporte.tarjeta_de_control, tension_total_f1: @reporte.tension_total_f1, tension_total_f2: @reporte.tension_total_f2, tension_total_f3: @reporte.tension_total_f3, tension_total_m: @reporte.tension_total_m, ventilador_compresor_f1: @reporte.ventilador_compresor_f1, ventilador_compresor_f2: @reporte.ventilador_compresor_f2, ventilador_compresor_f3: @reporte.ventilador_compresor_f3, ventilador_compresor_m: @reporte.ventilador_compresor_m, ventilador_evapodar_f3: @reporte.ventilador_evapodar_f3, ventilador_evaporador_inyeccion_f1: @reporte.ventilador_evaporador_inyeccion_f1, ventilador_evaporador_inyeccion_f2: @reporte.ventilador_evaporador_inyeccion_f2, ventilador_evaporador_m: @reporte.ventilador_evaporador_m, ventilador_retorno_f1: @reporte.ventilador_retorno_f1, ventilador_retorno_f2: @reporte.ventilador_retorno_f2, ventilador_retorno_f3: @reporte.ventilador_retorno_f3, ventilador_retorno_m: @reporte.ventilador_retorno_m, ventiladores: @reporte.ventiladores, vibraciones_y_ruido: @reporte.vibraciones_y_ruido } }
    assert_redirected_to reporte_url(@reporte)
  end

  test "should destroy reporte" do
    assert_difference("Reporte.count", -1) do
      delete reporte_url(@reporte)
    end

    assert_redirected_to reportes_url
  end
end
