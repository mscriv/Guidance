json.array!(@subjects) do |subject|
  json.extract! subject, :id, :name, :requisite, :diploma_id
  json.url subject_url(subject, format: :json)
end
