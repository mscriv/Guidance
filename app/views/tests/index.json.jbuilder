json.array!(@tests) do |test|
  json.extract! test, :id, :name, :test_date, :registration_deadline, :description
  json.url test_url(test, format: :json)
end
