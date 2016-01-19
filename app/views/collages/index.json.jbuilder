json.array!(@collages) do |collage|
  json.extract! collage, :id, :product_id, :name
  json.url collage_url(collage, format: :json)
end
