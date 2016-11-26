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

ActiveRecord::Schema.define(version: 20161126184951) do

  create_table "favorites", force: :cascade do |t|
    t.string   "teamID"
    t.string   "playerID"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "favs", force: :cascade do |t|
    t.integer  "playerID"
    t.integer  "teamID"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "leagues", force: :cascade do |t|
    t.string   "prize_money"
    t.string   "league_name"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "matches", force: :cascade do |t|
    t.string   "team1ID"
    t.string   "team2ID"
    t.string   "leagueID"
    t.string   "match_time"
    t.string   "match_date"
    t.string   "location"
    t.integer  "team1Score"
    t.integer  "team2Score"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "players", force: :cascade do |t|
    t.string   "ign"
    t.integer  "age"
    t.string   "country"
    t.string   "in_game_role"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  create_table "roles", force: :cascade do |t|
    t.string   "name"
    t.string   "resource_type"
    t.integer  "resource_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.index ["name", "resource_type", "resource_id"], name: "index_roles_on_name_and_resource_type_and_resource_id"
    t.index ["name"], name: "index_roles_on_name"
  end

  create_table "seasons", force: :cascade do |t|
    t.string   "season_name"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "statistics", force: :cascade do |t|
    t.integer  "games_played"
    t.integer  "kills"
    t.integer  "deaths"
    t.integer  "wins"
    t.integer  "losses"
    t.integer  "ties"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  create_table "teams", force: :cascade do |t|
    t.string   "leagueID"
    t.text     "bio"
    t.string   "coachID"
    t.string   "team_name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.string   "email"
    t.string   "ign"
    t.string   "coachID"
    t.string   "age"
    t.string   "country"
    t.string   "ingame_role"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.string   "team"
    t.string   "game"
  end

  create_table "users_roles", id: false, force: :cascade do |t|
    t.integer "user_id"
    t.integer "role_id"
    t.index ["user_id", "role_id"], name: "index_users_roles_on_user_id_and_role_id"
  end

end
