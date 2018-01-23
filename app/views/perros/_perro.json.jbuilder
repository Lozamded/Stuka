json.extract! perro, :id, :nombre, :fecha_ingreso, :fecha_nacimiento, :fecha_adopcion, :created_at, :updated_at
json.url perro_url(perro, format: :json)
