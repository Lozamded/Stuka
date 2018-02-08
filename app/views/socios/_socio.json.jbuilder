json.extract! socio, :id, :nombre, :rut, :aporte, :fecha_nacimiento, :email, :direccion, :comuna, :created_at, :updated_at
json.url socio_url(socio, format: :json)
