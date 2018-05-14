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

ActiveRecord::Schema.define(version: 20180514155154) do

  create_table "Players", force: true do |t|
    t.string   "first_name"
    t.integer  "age"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "lastname"
    t.integer  "team_id"
  end

  add_index "Players", ["team_id"], name: "index_players_on_team_id"

  create_table "addresses", force: true do |t|
    t.string   "street"
    t.integer  "player_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "addresses", ["player_id"], name: "index_addresses_on_player_id"

  create_table "appearences", force: true do |t|
    t.integer  "player_id"
    t.integer  "game_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "appearences", ["game_id"], name: "index_appearences_on_game_id"
  add_index "appearences", ["player_id"], name: "index_appearences_on_player_id"

  create_table "games", force: true do |t|
    t.string   "hometeam"
    t.string   "awayteam"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "teams", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
