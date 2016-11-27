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

ActiveRecord::Schema.define(version: 20161127160734) do

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

  create_table "matches", force: :cascade do |t|
    t.string   "team1ID"
    t.string   "team2ID"
    t.string   "leagueID"
    t.string   "match_time"
    t.string   "match_date"
    t.string   "location"
    t.integer  "team1Score"
    t.integer  "team2Score"
    t.integer  "league_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
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
    t.string   "leagueID"
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
    t.integer  "age"
    t.string   "region"
    t.integer  "player_id"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
    t.index ["player_id"], name: "index_users_on_player_id"
  end

end
