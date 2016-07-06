json.array!(@orders) do |order|
  json.extract! order, :id, :order_id, :order_amt
  json.url order_url(order, format: :json)
end
