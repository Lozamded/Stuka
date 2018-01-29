json.extract! perro, :id, :nombre, :fecha_ingreso, :fecha_nacimiento, :propietario_id , :fecha_adopcion, :created_at, :updated_at
json.url perro_url(perro, format: :json)
