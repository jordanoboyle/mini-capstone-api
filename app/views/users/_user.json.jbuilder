# json.extract! user, :id, :created_at, :updated_at
# json.url user_url(user, format: :json)

json.id     user.id
json.name     user.name
json.email     user.email
json.password     user.password
json.created_at     user.created_at
json.updated_at     user.updated_at
json.admin            user.admin
json.carted_products     user.carted_products
json.orders     user.orders
