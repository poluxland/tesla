# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema[7.0].define(version: 2023_01_04_151730) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "clientes", force: :cascade do |t|
    t.string "rut"
    t.string "nombre"
    t.string "direccion"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "equipos", force: :cascade do |t|
    t.bigint "sucursale_id", null: false
    t.string "unidad"
    t.string "tipo"
    t.string "contacto"
    t.string "otros"
    t.string "codigo"
    t.string "observaciones"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["sucursale_id"], name: "index_equipos_on_sucursale_id"
  end

  create_table "reportes", force: :cascade do |t|
    t.bigint "cliente_id", null: false
    t.bigint "sucursale_id", null: false
    t.bigint "equipo_id", null: false
    t.string "enchufes"
    t.string "cables"
    t.string "conecciones"
    t.string "estructura"
    t.string "corrosion"
    t.string "bases"
    t.string "ventiladores"
    t.string "condensador"
    t.string "compresor"
    t.string "evaporador"
    t.string "linea_refrigerante"
    t.string "aislacion"
    t.string "correas"
    t.string "lubricacion"
    t.string "filtro_de_aire"
    t.string "carcasa"
    t.string "partida_normal"
    t.string "vibraciones_y_ruido"
    t.string "luces_e_indicadores"
    t.string "direccion_de_ventiladores"
    t.string "nivel_de_aceite"
    t.string "nivel_de_refrigerante"
    t.string "pruebas_de_funcionamiento"
    t.string "alarmas"
    t.string "sobrecalor"
    t.string "sobrecalentamiento"
    t.string "presion_de_succion"
    t.string "presion_de_descarga"
    t.string "tarjeta_de_control"
    t.string "compresor_f1"
    t.string "compresor_f2"
    t.string "compresor_f3"
    t.string "compresor_m"
    t.string "ventilador_compresor_f1"
    t.string "ventilador_compresor_f2"
    t.string "ventilador_compresor_f3"
    t.string "ventilador_compresor_m"
    t.string "ventilador_evaporador_inyeccion_f1"
    t.string "ventilador_evaporador_inyeccion_f2"
    t.string "ventilador_evapodar_f3"
    t.string "ventilador_evaporador_m"
    t.string "ventilador_retorno_f1"
    t.string "ventilador_retorno_f2"
    t.string "ventilador_retorno_f3"
    t.string "ventilador_retorno_m"
    t.string "calefactor_f1"
    t.string "calefactor_f2"
    t.string "calefactor_f3"
    t.string "calefactor_m"
    t.string "cable_poder_f1"
    t.string "cable_poder_f2"
    t.string "cable_poder_f3"
    t.string "cable_poder_m"
    t.string "tension_total_f1"
    t.string "tension_total_f2"
    t.string "tension_total_f3"
    t.string "tension_total_m"
    t.string "detalle"
    t.string "insumos_repuestos"
    t.string "firma_solicitante"
    t.string "firma_tecnico"
    t.string "imagen_1"
    t.string "imagen_2"
    t.string "imagen_3"
    t.string "coigo_qr"
    t.string "otros"
    t.date "fecha"
    t.string "servicio"
    t.string "chiller_presion_agua"
    t.string "chiller_presion_agua_retorno"
    t.string "chiller_t_agua_suministrada"
    t.string "chiller_t_agua_retorno"
    t.string "chiller_caudal_suministrado"
    t.string "chiller_caudal_retorno"
    t.string "a1"
    t.string "a2"
    t.string "a3"
    t.string "a4"
    t.integer "b1"
    t.integer "b2"
    t.integer "b3"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.datetime "incio"
    t.datetime "termino"
    t.index ["cliente_id"], name: "index_reportes_on_cliente_id"
    t.index ["equipo_id"], name: "index_reportes_on_equipo_id"
    t.index ["sucursale_id"], name: "index_reportes_on_sucursale_id"
  end

  create_table "sucursales", force: :cascade do |t|
    t.bigint "cliente_id", null: false
    t.string "nombre"
    t.string "direccion"
    t.string "contacto"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["cliente_id"], name: "index_sucursales_on_cliente_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.boolean "admin"
    t.boolean "cliente"
    t.boolean "tecnico"
    t.integer "role"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "equipos", "sucursales"
  add_foreign_key "reportes", "clientes"
  add_foreign_key "reportes", "equipos"
  add_foreign_key "reportes", "sucursales"
  add_foreign_key "sucursales", "clientes"
end
