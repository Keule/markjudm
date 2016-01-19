json.array!(@pictures) do |picture|
  json.extract! picture, :id, :element_id, :image, :thumb
  json.url picture_url(picture, format: :json)
end
