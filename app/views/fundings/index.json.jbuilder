json.array!(@fundings) do |funding|
  json.extract! funding, :id, :name, :adress, :focus, :url, :art, :description, :thumbnail
  json.url funding_url(funding, format: :json)
end
