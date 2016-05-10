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
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 20160510003407) do

  create_table "aluno_disciplinas", force: :cascade do |t|
    t.integer  "aluno_id"
    t.integer  "disciplina_id"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

  add_index "aluno_disciplinas", ["aluno_id"], name: "index_aluno_disciplinas_on_aluno_id"
  add_index "aluno_disciplinas", ["disciplina_id"], name: "index_aluno_disciplinas_on_disciplina_id"

  create_table "alunos", force: :cascade do |t|
    t.string   "matricula"
    t.string   "nome"
    t.string   "sobrenome"
    t.string   "senha"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "aulas", force: :cascade do |t|
    t.string   "data_abertura"
    t.string   "conteudo"
    t.integer  "disciplina_id"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

  add_index "aulas", ["disciplina_id"], name: "index_aulas_on_disciplina_id"

  create_table "disciplinas", force: :cascade do |t|
    t.string   "descricao"
    t.integer  "professor_id"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  add_index "disciplinas", ["professor_id"], name: "index_disciplinas_on_professor_id"

  create_table "professores", force: :cascade do |t|
    t.string   "matricula"
    t.string   "nome"
    t.string   "sobrenome"
    t.string   "senha"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
