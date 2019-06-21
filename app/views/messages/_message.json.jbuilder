json.extract! message, :id, :chatwork_id, :content, :room, :time, :day_of_week, :created_at, :updated_at
json.url message_url(message, format: :json)
