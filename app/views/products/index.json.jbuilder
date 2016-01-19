json.array!(@products) do |product|
  json.extract! product, :id, :lasejob_id, :portfolio_id, :name
  json.url product_url(product, format: :json)
end
