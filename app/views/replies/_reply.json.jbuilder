json.extract! reply, :id, :name, :email, :message, :created_at, :updated_at
json.url reply_url(reply, format: :json)
