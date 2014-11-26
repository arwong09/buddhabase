json.array!(@items) do |item|
  json.id item.id
  json.sku item.sku
  json.name item.name
  json.category item.category
  json.quantity item.quantity
end