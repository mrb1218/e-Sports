json.extract! statistic, :id, :games_played, :kills, :deaths, :wins, :losses, :ties, :created_at, :updated_at
json.url statistic_url(statistic, format: :json)