json.extract! cart, :id, :productId, :productQty, :productPrice, :totalProducts, :cartValue, :created_at, :updated_at
json.url cart_url(cart, format: :json)
