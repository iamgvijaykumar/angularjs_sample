json.array!(@products) do |product|
  json.extract! product, :id, :name, :description, :user_id, :description, :is_active
  json.url product_url(product, format: :json)
end
