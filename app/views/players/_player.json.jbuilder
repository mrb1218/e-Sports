json.extract! player, :id, :ign, :age, :country, :in_game_role, :team_id, :created_at, :updated_at
json.url player_url(player, format: :json)