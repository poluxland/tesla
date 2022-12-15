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

ActiveRecord::Schema[7.0].define(version: 2022_12_14_190806) do
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

  create_table "sucursales", force: :cascade do |t|
    t.bigint "cliente_id", null: false
    t.string "nombre"
    t.string "direccion"
    t.string "contacto"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["cliente_id"], name: "index_sucursales_on_cliente_id"
  end

  add_foreign_key "equipos", "sucursales"
  add_foreign_key "sucursales", "clientes"
end
