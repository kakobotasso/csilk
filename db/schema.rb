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

ActiveRecord::Schema.define(:version => 20130123223441) do

  create_table "banners", :force => true do |t|
    t.string   "nome"
    t.string   "link"
    t.string   "data_pub"
    t.datetime "created_at",          :null => false
    t.datetime "updated_at",          :null => false
    t.string   "imagem_file_name"
    t.string   "imagem_content_type"
    t.integer  "imagem_file_size"
    t.datetime "imagem_updated_at"
  end

  create_table "categorias", :force => true do |t|
    t.string   "nome",       :null => false
    t.string   "slug",       :null => false
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "contato_produtos", :force => true do |t|
    t.string   "nome"
    t.string   "email"
    t.string   "telefone"
    t.string   "assunto"
    t.text     "mensagem"
    t.integer  "produto_id"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  add_index "contato_produtos", ["produto_id"], :name => "index_contato_produtos_on_produto_id"

  create_table "contatos", :force => true do |t|
    t.string   "nome",       :null => false
    t.string   "email",      :null => false
    t.string   "telefone",   :null => false
    t.string   "assunto",    :null => false
    t.text     "mensagem",   :null => false
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "fornecedores", :force => true do |t|
    t.string   "razao_social",                :null => false
    t.string   "cnpj"
    t.string   "nome_contato",                :null => false
    t.string   "telefone",                    :null => false
    t.string   "email",                       :null => false
    t.datetime "created_at",                  :null => false
    t.datetime "updated_at",                  :null => false
    t.integer  "novo",         :default => 1
  end

  create_table "fotos", :force => true do |t|
    t.integer  "produto_id"
    t.datetime "created_at",           :null => false
    t.datetime "updated_at",           :null => false
    t.string   "picture_file_name"
    t.string   "picture_content_type"
    t.integer  "picture_file_size"
    t.datetime "picture_updated_at"
  end

  add_index "fotos", ["produto_id"], :name => "index_fotos_on_produto_id"

  create_table "newsletters", :force => true do |t|
    t.string   "nome",       :null => false
    t.string   "email",      :null => false
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "produtos", :force => true do |t|
    t.string   "nome",         :null => false
    t.string   "slug",         :null => false
    t.text     "descricao"
    t.integer  "nvisitas"
    t.integer  "ncontatos"
    t.integer  "categoria_id"
    t.string   "keywords"
    t.string   "description"
    t.datetime "created_at",   :null => false
    t.datetime "updated_at",   :null => false
  end

  add_index "produtos", ["categoria_id"], :name => "index_produtos_on_categoria_id"

  create_table "users", :force => true do |t|
    t.string   "email",                  :default => "", :null => false
    t.string   "encrypted_password",     :default => "", :null => false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          :default => 0
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at",                             :null => false
    t.datetime "updated_at",                             :null => false
  end

  add_index "users", ["email"], :name => "index_users_on_email", :unique => true
  add_index "users", ["reset_password_token"], :name => "index_users_on_reset_password_token", :unique => true

end
