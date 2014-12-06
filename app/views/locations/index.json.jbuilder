json.array!(@locations) do |location|
  json.extract! location, :id, :school, :test_code, :school_code, :test_id
  json.url location_url(location, format: :json)
end
