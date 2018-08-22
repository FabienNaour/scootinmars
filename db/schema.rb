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

ActiveRecord::Schema.define(version: 2018_08_21_151145) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "boutiques", force: :cascade do |t|
    t.string "nom"
    t.string "adresse"
    t.string "email"
    t.string "telephone"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "reservations", force: :cascade do |t|
    t.string "date_debut"
    t.string "date_fin"
    t.bigint "scooter_id"
    t.bigint "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["scooter_id"], name: "index_reservations_on_scooter_id"
    t.index ["user_id"], name: "index_reservations_on_user_id"
  end

  create_table "scooters", force: :cascade do |t|
    t.string "marque"
    t.string "modele"
    t.integer "annee"
    t.integer "kilometrage"
    t.string "categorie"
    t.boolean "permis"
    t.boolean "disponible"
    t.integer "prix"
    t.bigint "boutique_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["boutique_id"], name: "index_scooters_on_boutique_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "prenom"
    t.string "nom"
    t.integer "age"
    t.boolean "permis"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.string "docpermis"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "reservations", "scooters"
  add_foreign_key "reservations", "users"
  add_foreign_key "scooters", "boutiques"
end
