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

ActiveRecord::Schema.define(version: 2018_07_18_005850) do

  create_table "beneficios", force: :cascade do |t|
    t.string "nomBeneficio"
    t.string "imgBeneficio"
    t.float "puntBeneficio"
    t.integer "porcDescuento"
    t.boolean "inFavorito"
    t.integer "idFavorito"
    t.integer "idEje"
    t.string "nomEje"
    t.string "iconEje"
    t.string "iconSEje"
    t.integer "idLocal"
    t.string "inAbierto"
    t.float "numLongitud"
    t.float "numLatitud"
    t.float "numDistancia"
    t.string "nomDistrito"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "ejes", force: :cascade do |t|
    t.string "nomEje"
    t.string "imgEje"
    t.string "iconEje"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "empresas", force: :cascade do |t|
    t.string "nomEmpresa"
    t.string "desEmpresa"
    t.string "urlLogo"
    t.string "numSoporte"
    t.string "nomSkype"
    t.string "inClave"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "imagens", force: :cascade do |t|
    t.string "urlImagen"
    t.string "urlImagenPrevia"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "locals", force: :cascade do |t|
    t.string "nomLocal"
    t.string "numLatitud"
    t.string "numLongitud"
    t.string "dirLocal"
    t.string "nomDistrito"
    t.string "numTelefono"
    t.string "inAbierto"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "proveedors", force: :cascade do |t|
    t.string "razon_social"
    t.string "direccion"
    t.string "distrito"
    t.string "provincia"
    t.string "departamento"
    t.string "telefono"
    t.string "celular1"
    t.string "celular2"
    t.string "correo"
    t.string "tipo_servicio"
    t.string "latitud"
    t.string "longitud"
    t.string "url"
    t.string "hora_inicio"
    t.string "hora_fin"
    t.string "foto_local"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer "user_id"
    t.index ["user_id"], name: "index_proveedors_on_user_id"
  end

  create_table "servicios", force: :cascade do |t|
    t.string "nomServicio"
    t.string "inActivo"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer "sign_in_count", default: 0, null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string "current_sign_in_ip"
    t.string "last_sign_in_ip"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "idUsuario"
    t.string "logiUsuario"
    t.string "nomUsuario"
    t.string "apeUsuario"
    t.string "numDni"
    t.string "numCelular"
    t.string "imgUsuario"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  create_table "usuarios", force: :cascade do |t|
    t.string "logiUsuario"
    t.string "nomUsuario"
    t.string "correoUsuario"
    t.string "apeUsuario"
    t.string "numDni"
    t.string "numCelular"
    t.string "imgUsuario"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
