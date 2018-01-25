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

ActiveRecord::Schema.define(version: 20180125135625) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "boleta", force: :cascade do |t|
    t.date "fecha"
    t.bigint "valor"
    t.text "descripcion"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "consulta", force: :cascade do |t|
    t.date "fecha"
    t.text "tipo"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "gastos", force: :cascade do |t|
    t.text "descripcion"
    t.bigint "precio"
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
    t.index ["propietario_id"], name: "index_perros_on_propietario_id"
  end

  create_table "procedimientos", force: :cascade do |t|
    t.text "descripcion"
    t.bigint "precio"
    t.bigint "precio_sruka"
    t.string "precio_costo"
    t.string "bigint"
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
  end

  create_table "proveedors", force: :cascade do |t|
    t.text "nombre"
    t.text "descripcion"
    t.text "email"
    t.text "telefono"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "perros", "propietarios"
end
