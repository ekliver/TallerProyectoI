json.extract! proveedor, :id, :razon_social, :direccion, :distrito, :provincia, :departamento, :telefono, :celular1, :celular2, :correo, :tipo_servicio, :latitud, :longitud, :url, :hora_inicio, :hora_fin, :foto_local, :created_at, :updated_at
json.url proveedor_url(proveedor, format: :json)
