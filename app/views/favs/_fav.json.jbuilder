json.extract! fav, :id, :playerID, :teamID, :created_at, :updated_at
json.url fav_url(fav, format: :json)