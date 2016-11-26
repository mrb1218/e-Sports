json.extract! user, :id, :first_name, :last_name, :email, :phone_number, :coachID, :age, :region, :player_id, :created_at, :updated_at
json.url user_url(user, format: :json)