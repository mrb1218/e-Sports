json.extract! player, :id, :ign, :age, :country, :in_game_role, :created_at, :updated_at
json.url player_url(player, format: :json)