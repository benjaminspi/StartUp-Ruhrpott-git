json.array!(@co_workings) do |co_working|
  json.extract! co_working, :id, :name, :address, :url, :description, :picture
  json.url co_working_url(co_working, format: :json)
end
