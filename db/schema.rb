# encoding: UTF-8
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

ActiveRecord::Schema.define(:version => 20130111130744) do

  create_table "departments", :force => true do |t|
    t.string   "nombre"
    t.text     "descripcion"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  create_table "parte_contenidos", :force => true do |t|
    t.float    "tiempo_produccion_rte"
    t.integer  "restaurantes_producidos"
    t.float    "tiempo_produccion_carta"
    t.integer  "cartas_producidas"
    t.float    "tiempo_modificacion_asociados"
    t.integer  "modificaciones_asociados"
    t.float    "tiempo_modificacion_afiliados"
    t.integer  "modificaciones_afiliados"
    t.float    "tiempo_revision_restaurante"
    t.integer  "restaurantes_revisados"
    t.float    "tiempo_revision_carta"
    t.integer  "cartas_revisadas"
    t.float    "tiempo_revision_modificaciones_asociados"
    t.integer  "modificaciones_asociados_revisadas"
    t.float    "tiempo_revision_modificaciones_afiliados"
    t.integer  "modificaciones_afiliados_revisadas"
    t.float    "tiempo_gestion"
    t.float    "tiempo_otras_tareas"
    t.text     "descripcion_otras_tareas"
    t.text     "comentario"
    t.date     "fecha"
    t.datetime "created_at",                               :null => false
    t.datetime "updated_at",                               :null => false
  end

  create_table "roles", :force => true do |t|
    t.string   "nombre"
    t.text     "descripcion"
    t.string   "categoria"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  create_table "salaries", :force => true do |t|
    t.integer  "mes"
    t.float    "salario_bruto"
    t.float    "bonus"
    t.float    "extra"
    t.float    "coste_empresa"
    t.integer  "dias_trabajados"
    t.datetime "created_at",      :null => false
    t.datetime "updated_at",      :null => false
  end

  create_table "users", :force => true do |t|
    t.string   "nombre"
    t.string   "apellido"
    t.string   "nick"
    t.string   "password",   :null => false
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

end
