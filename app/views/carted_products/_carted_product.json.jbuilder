# json.extract! carted_product, :id, :created_at, :updated_at
# json.url carted_product_url(carted_product, format: :json)

json.id   carted_product.id
json.user_id   carted_product.user_id
json.product_id   carted_product.product_id
json.quantity   carted_product.quantity
json.order_id   carted_product.order_id
json.status   carted_product.status
json.created_at   carted_product.created_at
json.updated_at   carted_product.updated_at

json.product carted_product.product
json.images carted_product.product.images


# json.product do 
#   json.id carted_product.product.id
#   json.name carted_product.product.name
#   json.description carted_product.product.description
#   json.price carted_product.product.price

#   json.images carted_product.product.images do |image|
#     json.id image.id
#     json.url image.url
#     json.created_at image.created_at
#   end
# end