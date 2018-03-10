# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 20180220022641) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "boleta", force: :cascade do |t|
    t.date "fecha"
    t.bigint "valor"
    t.text "descripcion"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "consulta_id"
    t.index ["consulta_id"], name: "index_boleta_on_consulta_id"
  end

  create_table "con_ins", force: :cascade do |t|
    t.string "nombre"
    t.decimal "cant_actual"
    t.bigint "consultum_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["consultum_id"], name: "index_con_ins_on_consultum_id"
  end

  create_table "con_procs", force: :cascade do |t|
    t.string "procedimiento"
    t.bigint "consultum_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "precio"
    t.index ["consultum_id"], name: "index_con_procs_on_consultum_id"
  end

  create_table "con_vets", force: :cascade do |t|
    t.string "nombre"
    t.bigint "consultum_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["consultum_id"], name: "index_con_vets_on_consultum_id"
  end

  create_table "consulta", force: :cascade do |t|
    t.date "fecha"
    t.text "tipo"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "veterinario_id"
    t.bigint "perro_id"
    t.bigint "procedimiento_id"
    t.bigint "precio"
    t.index ["perro_id"], name: "index_consulta_on_perro_id"
    t.index ["procedimiento_id"], name: "index_consulta_on_procedimiento_id"
    t.index ["veterinario_id"], name: "index_consulta_on_veterinario_id"
  end

  create_table "gastos", force: :cascade do |t|
    t.text "descripcion"
    t.bigint "precio"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "images", force: :cascade do |t|
    t.string "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "insumos", force: :cascade do |t|
    t.text "nombre"
    t.text "tipo"
    t.text "presentacion"
    t.bigint "precio"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "proveedor_id"
    t.text "descripcion"
    t.decimal "cantidad"
    t.decimal "cantidad_actual"
    t.date "fecha_compra"
    t.bigint "unidades"
    t.string "picture"
    t.index ["proveedor_id"], name: "index_insumos_on_proveedor_id"
  end

  create_table "perros", force: :cascade do |t|
    t.string "nombre"
    t.date "fecha_ingreso"
    t.date "fecha_nacimiento"
    t.date "fecha_adopcion"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "propietario_id"
    t.bigint "peso"
    t.text "porte"
    t.text "comentario"
    t.string "picture"
    t.date "fecha_defuncion"
    t.bigint "socio_id"
    t.string "sexo"
    t.string "agresividad_perro"
    t.string "agresividad_persona"
    t.string "raza"
    t.index ["propietario_id"], name: "index_perros_on_propietario_id"
    t.index ["socio_id"], name: "index_perros_on_socio_id"
  end

  create_table "procedimientos", force: :cascade do |t|
    t.text "descripcion"
    t.bigint "precio"
    t.bigint "precio_sruka"
    t.string "precio_costo"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "propietarios", force: :cascade do |t|
    t.string "nombre"
    t.date "fecha_nacimiento"
    t.string "email"
    t.string "telefono"
    t.string "direccion"
    t.string "comuna"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "rut"
    t.string "picture"
  end

  create_table "proveedors", force: :cascade do |t|
    t.text "nombre"
    t.text "descripcion"
    t.text "email"
    t.text "telefono"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "picture"
  end

  create_table "socios", force: :cascade do |t|
    t.text "nombre"
    t.text "rut"
    t.bigint "aporte"
    t.date "fecha_nacimiento"
    t.text "email"
    t.text "direccion"
    t.text "comuna"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "picture"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "name", default: "", null: false
    t.string "type", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer "sign_in_count", default: 0, null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.inet "current_sign_in_ip"
    t.inet "last_sign_in_ip"
    t.string "picture"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  create_table "veterinarios", force: :cascade do |t|
    t.text "nombre"
    t.date "fecha_nacimiento"
    t.text "especialidad"
    t.text "email"
    t.text "telefono"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.text "apodo"
    t.string "picture"
    t.string "estudios"
    t.string "casa_estudios"
    t.string "tipo"
  end

  add_foreign_key "boleta", "consulta", column: "consulta_id"
  add_foreign_key "con_ins", "consulta"
  add_foreign_key "con_vets", "consulta"
  add_foreign_key "consulta", "perros"
  add_foreign_key "consulta", "procedimientos"
  add_foreign_key "consulta", "veterinarios"
  add_foreign_key "insumos", "proveedors"
  add_foreign_key "perros", "propietarios"
  add_foreign_key "perros", "socios"
end
