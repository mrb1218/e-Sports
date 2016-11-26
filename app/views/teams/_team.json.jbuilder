json.extract! team, :id, :leagueID, :bio, :coachID, :team_name, :created_at, :updated_at
json.url team_url(team, format: :json)