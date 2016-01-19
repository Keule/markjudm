json.array!(@lasejobs) do |lasejob|
  json.extract! lasejob, :id, :title
  json.url lasejob_url(lasejob, format: :json)
end
