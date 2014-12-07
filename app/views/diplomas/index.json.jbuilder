json.array!(@diplomas) do |diploma|
  json.extract! diploma, :id, :name, :requirement_id
  json.url diploma_url(diploma, format: :json)
end
