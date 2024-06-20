# json.extract! product, :id, :created_at, :updated_at
# json.url product_url(product, format: :json)

json.id product.id
json.name product.name
json.price product.price
json.tax product.tax
json.total product.total
json.is_discounted? product.is_discounted?
json.description product.description
json.inventory product.inventory
json.supplier_id product.supplier_id
json.supplier product.supplier
json.images product.images
json.categories product.categories
json.created_at product.created_at
json.updated_at product.updated_at


