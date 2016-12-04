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

ActiveRecord::Schema.define(version: 20161204083133) do

  create_table "favorites", force: :cascade do |t|
    t.string   "teamID"
    t.string   "playerID"
    t.integer  "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_favorites_on_user_id"
  end

  create_table "leagues", force: :cascade do |t|
    t.string   "prize_money"
    t.string   "league_name"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "leagues_seasons", id: false, force: :cascade do |t|
    t.integer "league_id", null: false
    t.integer "season_id", null: false
  end

  create_table "matches", force: :cascade do |t|
    t.string   "team1ID"
    t.string   "team2ID"
    t.string   "location"
    t.integer  "team1Score"
    t.integer  "team2Score"
    t.integer  "league_id"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
    t.datetime "match_date_time"
    t.index ["league_id"], name: "index_matches_on_league_id"
  end

  create_table "players", force: :cascade do |t|
    t.string   "ign"
    t.integer  "age"
    t.string   "country"
    t.string   "in_game_role"
    t.integer  "team_id"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
    t.index ["team_id"], name: "index_players_on_team_id"
  end

  create_table "players_seasons", id: false, force: :cascade do |t|
    t.integer "player_id", null: false
    t.integer "season_id", null: false
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

  create_table "seasons_teams", id: false, force: :cascade do |t|
    t.integer "team_id",   null: false
    t.integer "season_id", null: false
  end

  create_table "statistics", force: :cascade do |t|
    t.integer  "games_played"
    t.integer  "kills"
    t.integer  "deaths"
    t.integer  "wins"
    t.integer  "losses"
    t.integer  "ties"
    t.integer  "team_id"
    t.integer  "match_id"
    t.integer  "season_id"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
    t.integer  "player_id"
    t.index ["match_id"], name: "index_statistics_on_match_id"
    t.index ["player_id"], name: "index_statistics_on_player_id"
    t.index ["season_id"], name: "index_statistics_on_season_id"
    t.index ["team_id"], name: "index_statistics_on_team_id"
  end

  create_table "teams", force: :cascade do |t|
    t.text     "bio"
    t.string   "coachID"
    t.string   "team_name"
    t.integer  "league_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["league_id"], name: "index_teams_on_league_id"
  end

  create_table "users", force: :cascade do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.string   "email"
    t.string   "phone_number"
    t.string   "coachID"
    t.string   "region"
    t.integer  "player_id"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["player_id"], name: "index_users_on_player_id"
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  create_table "users_roles", id: false, force: :cascade do |t|
    t.integer "user_id"
    t.integer "role_id"
    t.index ["user_id", "role_id"], name: "index_users_roles_on_user_id_and_role_id"
  end

end
