require "administrate/base_dashboard"

class ReporteDashboard < Administrate::BaseDashboard
  # ATTRIBUTE_TYPES
  # a hash that describes the type of each of the model's fields.
  #
  # Each different type represents an Administrate::Field object,
  # which determines how the attribute is displayed
  # on pages throughout the dashboard.
  ATTRIBUTE_TYPES = {
    id: Field::Number,
    a1: Field::String,
    a2: Field::String,
    a3: Field::String,
    a4: Field::String,
    aislacion: Field::String,
    alarmas: Field::String,
    b1: Field::Number,
    b2: Field::Number,
    b3: Field::Number,
    bases: Field::String,
    cable_poder_f1: Field::String,
    cable_poder_f2: Field::String,
    cable_poder_f3: Field::String,
    cable_poder_m: Field::String,
    cables: Field::String,
    calefactor_f1: Field::String,
    calefactor_f2: Field::String,
    calefactor_f3: Field::String,
    calefactor_m: Field::String,
    carcasa: Field::String,
    chiller_caudal_retorno: Field::String,
    chiller_caudal_suministrado: Field::String,
    chiller_presion_agua: Field::String,
    chiller_presion_agua_retorno: Field::String,
    chiller_t_agua_retorno: Field::String,
    chiller_t_agua_suministrada: Field::String,
    cliente: Field::BelongsTo,
    coigo_qr: Field::String,
    compresor: Field::String,
    compresor_f1: Field::String,
    compresor_f2: Field::String,
    compresor_f3: Field::String,
    compresor_m: Field::String,
    condensador: Field::String,
    conecciones: Field::String,
    correas: Field::String,
    corrosion: Field::String,
    detalle: Field::String,
    direccion_de_ventiladores: Field::String,
    enchufes: Field::String,
    equipo: Field::BelongsTo,
    estructura: Field::String,
    evaporador: Field::String,
    fecha: Field::Date,
    filtro_de_aire: Field::String,
    firma_solicitante: Field::String,
    firma_tecnico: Field::String,
    imagen_1: Field::String,
    imagen_2: Field::String,
    imagen_3: Field::String,
    incio: Field::DateTime,
    insumos_repuestos: Field::String,
    linea_refrigerante: Field::String,
    lubricacion: Field::String,
    luces_e_indicadores: Field::String,
    nivel_de_aceite: Field::String,
    nivel_de_refrigerante: Field::String,
    otros: Field::String,
    partida_normal: Field::String,
    presion_de_descarga: Field::String,
    presion_de_succion: Field::String,
    pruebas_de_funcionamiento: Field::String,
    servicio: Field::String,
    sobrecalentamiento: Field::String,
    sobrecalor: Field::String,
    sucursale: Field::BelongsTo,
    tarjeta_de_control: Field::String,
    tension_total_f1: Field::String,
    tension_total_f2: Field::String,
    tension_total_f3: Field::String,
    tension_total_m: Field::String,
    termino: Field::DateTime,
    ventilador_compresor_f1: Field::String,
    ventilador_compresor_f2: Field::String,
    ventilador_compresor_f3: Field::String,
    ventilador_compresor_m: Field::String,
    ventilador_evapodar_f3: Field::String,
    ventilador_evaporador_inyeccion_f1: Field::String,
    ventilador_evaporador_inyeccion_f2: Field::String,
    ventilador_evaporador_m: Field::String,
    ventilador_retorno_f1: Field::String,
    ventilador_retorno_f2: Field::String,
    ventilador_retorno_f3: Field::String,
    ventilador_retorno_m: Field::String,
    ventiladores: Field::String,
    vibraciones_y_ruido: Field::String,
    created_at: Field::DateTime,
    updated_at: Field::DateTime,
  }.freeze

  # COLLECTION_ATTRIBUTES
  # an array of attributes that will be displayed on the model's index page.
  #
  # By default, it's limited to four items to reduce clutter on index pages.
  # Feel free to add, remove, or rearrange items.
  COLLECTION_ATTRIBUTES = %i[
    id
    a1
    a2
    a3
  ].freeze

  # SHOW_PAGE_ATTRIBUTES
  # an array of attributes that will be displayed on the model's show page.
  SHOW_PAGE_ATTRIBUTES = %i[
    id
    a1
    a2
    a3
    a4
    aislacion
    alarmas
    b1
    b2
    b3
    bases
    cable_poder_f1
    cable_poder_f2
    cable_poder_f3
    cable_poder_m
    cables
    calefactor_f1
    calefactor_f2
    calefactor_f3
    calefactor_m
    carcasa
    chiller_caudal_retorno
    chiller_caudal_suministrado
    chiller_presion_agua
    chiller_presion_agua_retorno
    chiller_t_agua_retorno
    chiller_t_agua_suministrada
    cliente
    coigo_qr
    compresor
    compresor_f1
    compresor_f2
    compresor_f3
    compresor_m
    condensador
    conecciones
    correas
    corrosion
    detalle
    direccion_de_ventiladores
    enchufes
    equipo
    estructura
    evaporador
    fecha
    filtro_de_aire
    firma_solicitante
    firma_tecnico
    imagen_1
    imagen_2
    imagen_3
    incio
    insumos_repuestos
    linea_refrigerante
    lubricacion
    luces_e_indicadores
    nivel_de_aceite
    nivel_de_refrigerante
    otros
    partida_normal
    presion_de_descarga
    presion_de_succion
    pruebas_de_funcionamiento
    servicio
    sobrecalentamiento
    sobrecalor
    sucursale
    tarjeta_de_control
    tension_total_f1
    tension_total_f2
    tension_total_f3
    tension_total_m
    termino
    ventilador_compresor_f1
    ventilador_compresor_f2
    ventilador_compresor_f3
    ventilador_compresor_m
    ventilador_evapodar_f3
    ventilador_evaporador_inyeccion_f1
    ventilador_evaporador_inyeccion_f2
    ventilador_evaporador_m
    ventilador_retorno_f1
    ventilador_retorno_f2
    ventilador_retorno_f3
    ventilador_retorno_m
    ventiladores
    vibraciones_y_ruido
    created_at
    updated_at
  ].freeze

  # FORM_ATTRIBUTES
  # an array of attributes that will be displayed
  # on the model's form (`new` and `edit`) pages.
  FORM_ATTRIBUTES = %i[
    a1
    a2
    a3
    a4
    aislacion
    alarmas
    b1
    b2
    b3
    bases
    cable_poder_f1
    cable_poder_f2
    cable_poder_f3
    cable_poder_m
    cables
    calefactor_f1
    calefactor_f2
    calefactor_f3
    calefactor_m
    carcasa
    chiller_caudal_retorno
    chiller_caudal_suministrado
    chiller_presion_agua
    chiller_presion_agua_retorno
    chiller_t_agua_retorno
    chiller_t_agua_suministrada
    cliente
    coigo_qr
    compresor
    compresor_f1
    compresor_f2
    compresor_f3
    compresor_m
    condensador
    conecciones
    correas
    corrosion
    detalle
    direccion_de_ventiladores
    enchufes
    equipo
    estructura
    evaporador
    fecha
    filtro_de_aire
    firma_solicitante
    firma_tecnico
    imagen_1
    imagen_2
    imagen_3
    incio
    insumos_repuestos
    linea_refrigerante
    lubricacion
    luces_e_indicadores
    nivel_de_aceite
    nivel_de_refrigerante
    otros
    partida_normal
    presion_de_descarga
    presion_de_succion
    pruebas_de_funcionamiento
    servicio
    sobrecalentamiento
    sobrecalor
    sucursale
    tarjeta_de_control
    tension_total_f1
    tension_total_f2
    tension_total_f3
    tension_total_m
    termino
    ventilador_compresor_f1
    ventilador_compresor_f2
    ventilador_compresor_f3
    ventilador_compresor_m
    ventilador_evapodar_f3
    ventilador_evaporador_inyeccion_f1
    ventilador_evaporador_inyeccion_f2
    ventilador_evaporador_m
    ventilador_retorno_f1
    ventilador_retorno_f2
    ventilador_retorno_f3
    ventilador_retorno_m
    ventiladores
    vibraciones_y_ruido
  ].freeze

  # COLLECTION_FILTERS
  # a hash that defines filters that can be used while searching via the search
  # field of the dashboard.
  #
  # For example to add an option to search for open resources by typing "open:"
  # in the search field:
  #
  #   COLLECTION_FILTERS = {
  #     open: ->(resources) { resources.where(open: true) }
  #   }.freeze
  COLLECTION_FILTERS = {}.freeze

  # Overwrite this method to customize how reportes are displayed
  # across all pages of the admin dashboard.
  #
  # def display_resource(reporte)
  #   "Reporte ##{reporte.id}"
  # end
end
