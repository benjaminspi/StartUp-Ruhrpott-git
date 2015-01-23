json.array!(@product_of_the_weeks) do |product_of_the_week|
  json.extract! product_of_the_week, :id, :name, :description, :date, :link, :published, :picture
  json.url product_of_the_week_url(product_of_the_week, format: :json)
end
