# json.extract! supplier, :id, :created_at, :updated_at
# json.url supplier_url(supplier, format: :json)


json.id supplier.id
json.name supplier.name
json.email supplier.email
json.phone_number supplier.phone_number
json.country_code_number supplier.country_code_number
json.created_at supplier.created_at
json.updated_at supplier.updated_at