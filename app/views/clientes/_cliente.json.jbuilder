json.extract! cliente, :id, :rut, :nombre, :direccion, :created_at, :updated_at
json.url cliente_url(cliente, format: :json)
