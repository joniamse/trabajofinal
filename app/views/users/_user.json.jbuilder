json.extract! user, :id, :username, :password, :name, :surname, :phone, :email, :created_at, :updated_at
json.url user_url(user, format: :json)
