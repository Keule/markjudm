json.array!(@elements) do |element|
  json.extract! element, :id, :lasejob_id
  json.url element_url(element, format: :json)
end