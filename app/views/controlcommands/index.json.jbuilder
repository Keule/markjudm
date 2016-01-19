json.array!(@controlcommands) do |controlcommand|
  json.extract! controlcommand, :id, :element_id, :path
  json.url controlcommand_url(controlcommand, format: :json)
end
