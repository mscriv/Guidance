json.array!(@counselors) do |counselor|
  json.extract! counselor, :id, :name, :bio, :contact
  json.url counselor_url(counselor, format: :json)
end
