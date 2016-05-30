json.array!(@examples) do |example|
  json.extract! example, :id, :my_file
  json.url example_url(example, format: :json)
end
