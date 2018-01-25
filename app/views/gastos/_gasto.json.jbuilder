json.extract! gasto, :id, :descripcion, :precio, :created_at, :updated_at
json.url gasto_url(gasto, format: :json)
