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
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20120901230552) do

  create_table "albums", :force => true do |t|
    t.string   "name"
    t.text     "descripcion"
    t.integer  "evento_id"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
    t.integer  "autor_id"
    t.string   "autor"
  end

  create_table "comentarios", :force => true do |t|
    t.integer  "post_id"
    t.text     "contenido"
    t.integer  "ingeniero_id"
    t.datetime "created_at",   :null => false
    t.datetime "updated_at",   :null => false
  end

  create_table "equipos", :force => true do |t|
    t.string   "name"
    t.integer  "manager_id"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "eventos", :force => true do |t|
    t.string   "name"
    t.text     "descripcion"
    t.integer  "seccion_id"
    t.datetime "fecha"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
    t.string   "lugar"
    t.datetime "termino"
    t.integer  "lugar_id"
  end

  create_table "fotos", :force => true do |t|
    t.string   "name"
    t.text     "descripcion"
    t.integer  "album_id"
    t.datetime "created_at",          :null => false
    t.datetime "updated_at",          :null => false
    t.string   "avatar_file_name"
    t.string   "avatar_content_type"
    t.integer  "avatar_file_size"
    t.datetime "avatar_updated_at"
  end

  create_table "ingenieros", :force => true do |t|
    t.string   "name"
    t.string   "email"
    t.integer  "permiso"
    t.datetime "created_at",         :null => false
    t.datetime "updated_at",         :null => false
    t.string   "encrypted_password"
    t.string   "salt"
  end

  create_table "lugars", :force => true do |t|
    t.string   "nombre"
    t.string   "x"
    t.string   "y"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "mensajes", :force => true do |t|
    t.string   "titulo"
    t.text     "contenido"
    t.integer  "emisor_id"
    t.integer  "ingeniero_id"
    t.boolean  "leido"
    t.datetime "created_at",   :null => false
    t.datetime "updated_at",   :null => false
  end

  create_table "modulos", :force => true do |t|
    t.string   "name"
    t.string   "molde"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "partidos", :force => true do |t|
    t.integer  "local_id"
    t.integer  "visita_id"
    t.datetime "fecha"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "posts", :force => true do |t|
    t.integer  "ingeniero_id"
    t.integer  "seccion_id"
    t.string   "titulo"
    t.text     "resumen"
    t.text     "contenido"
    t.datetime "created_at",           :null => false
    t.datetime "updated_at",           :null => false
    t.string   "avatar_file_name"
    t.string   "avatar_content_type"
    t.integer  "avatar_file_size"
    t.datetime "avatar_updated_at"
    t.integer  "cantidad_comentarios"
    t.boolean  "destacado"
    t.string   "youtube_link"
    t.string   "codigo_impulso"
    t.text     "impulso_link"
  end

  create_table "seccions", :force => true do |t|
    t.integer  "modulo_id"
    t.string   "name"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
    t.string   "direccion"
  end

  create_table "vocalia", :force => true do |t|
    t.string   "nombre"
    t.text     "resumen"
    t.text     "contenido"
    t.integer  "seccion_id"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

end
