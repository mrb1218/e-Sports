json.extract! statistic, :id, :games_played, :kills, :deaths, :wins, :losses, :ties, :team_id, :match_id, :season_id, :created_at, :updated_at
json.url statistic_url(statistic, format: :json)