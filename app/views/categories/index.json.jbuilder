json.array!(@categories) do |category|
  json.extract! category, :id, :user_name, :password, :mobile_number, :Alive
  json.url category_url(category, format: :json)
end
