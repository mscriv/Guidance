json.array!(@events) do |event|
  json.extract! event, :id, :title, :location, :event_date, :starts_at, :ends_at
  json.url event_url(event, format: :json)
end
