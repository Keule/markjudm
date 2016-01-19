json.array!(@textlines) do |textline|
  json.extract! textline, :id, :element_id, :string
  json.url textline_url(textline, format: :json)
end
