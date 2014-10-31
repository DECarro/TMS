json.array!(@products) do |product|
  json.extract! product, :id, :name, :amount, :manufacture_part, :tms_id, :quick_overview, :read_more, :description
  json.url product_url(product, format: :json)
end
