class CreateReportes < ActiveRecord::Migration[7.0]
  def change
    create_table :reportes do |t|
      t.references :cliente, null: false, foreign_key: true
      t.references :sucursale, null: false, foreign_key: true
      t.references :equipo, null: false, foreign_key: true
      t.string :enchufes
      t.string :cables
      t.string :conecciones
      t.string :estructura
      t.string :corrosion
      t.string :bases
      t.string :ventiladores
      t.string :condensador
      t.string :compresor
      t.string :evaporador
      t.string :linea_refrigerante
      t.string :aislacion
      t.string :correas
      t.string :lubricacion
      t.string :filtro_de_aire
      t.string :carcasa
      t.string :partida_normal
      t.string :vibraciones_y_ruido
      t.string :luces_e_indicadores
      t.string :direccion_de_ventiladores
      t.string :nivel_de_aceite
      t.string :nivel_de_refrigerante
      t.string :pruebas_de_funcionamiento
      t.string :alarmas
      t.string :sobrecalor
      t.string :sobrecalentamiento
      t.string :presion_de_succion
      t.string :presion_de_descarga
      t.string :tarjeta_de_control
      t.string :compresor_f1
      t.string :compresor_f2
      t.string :compresor_f3
      t.string :compresor_m
      t.string :ventilador_compresor_f1
      t.string :ventilador_compresor_f2
      t.string :ventilador_compresor_f3
      t.string :ventilador_compresor_m
      t.string :ventilador_evaporador_inyeccion_f1
      t.string :ventilador_evaporador_inyeccion_f2
      t.string :ventilador_evapodar_f3
      t.string :ventilador_evaporador_m
      t.string :ventilador_retorno_f1
      t.string :ventilador_retorno_f2
      t.string :ventilador_retorno_f3
      t.string :ventilador_retorno_m
      t.string :calefactor_f1
      t.string :calefactor_f2
      t.string :calefactor_f3
      t.string :calefactor_m
      t.string :cable_poder_f1
      t.string :cable_poder_f2
      t.string :cable_poder_f3
      t.string :cable_poder_m
      t.string :tension_total_f1
      t.string :tension_total_f2
      t.string :tension_total_f3
      t.string :tension_total_m
      t.string :detalle
      t.string :insumos_repuestos
      t.string :firma_solicitante
      t.string :firma_tecnico
      t.string :imagen_1
      t.string :imagen_2
      t.string :imagen_3
      t.string :coigo_qr
      t.string :otros
      t.date :fecha
      t.string :servicio
      t.string :chiller_presion_agua
      t.string :chiller_presion_agua_retorno
      t.string :chiller_t_agua_suministrada
      t.string :chiller_t_agua_retorno
      t.string :chiller_caudal_suministrado
      t.string :chiller_caudal_retorno
      t.string :a1
      t.string :a2
      t.string :a3
      t.string :a4
      t.integer :b1
      t.integer :b2
      t.integer :b3

      t.timestamps
    end
  end
end
