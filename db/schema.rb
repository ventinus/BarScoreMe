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

ActiveRecord::Schema.define(version: 20170108064000) do

  create_table "bouts", force: :cascade do |t|
    t.integer  "games_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["games_id"], name: "index_bouts_on_games_id"
  end

  create_table "contests", force: :cascade do |t|
    t.integer "bouts_id"
    t.index ["bouts_id"], name: "index_contests_on_bouts_id"
  end

  create_table "games", force: :cascade do |t|
    t.string "name", null: false
  end

  create_table "players", force: :cascade do |t|
    t.string   "name",               default: "", null: false
    t.string   "email",              default: "", null: false
    t.string   "encrypted_password", default: "", null: false
    t.datetime "created_at",                      null: false
    t.datetime "updated_at",                      null: false
    t.index ["email"], name: "index_players_on_email", unique: true
    t.index [nil], name: "index_players_on_reset_password_token", unique: true
  end

  create_table "players_bouts", force: :cascade do |t|
    t.integer "players_id"
    t.integer "bouts_id"
    t.index ["bouts_id"], name: "index_players_bouts_on_bouts_id"
    t.index ["players_id"], name: "index_players_bouts_on_players_id"
  end

  create_table "scores", force: :cascade do |t|
    t.integer "contests_id"
    t.integer "players_id"
    t.string  "value",       null: false
    t.index ["contests_id"], name: "index_scores_on_contests_id"
    t.index ["players_id"], name: "index_scores_on_players_id"
  end

end
