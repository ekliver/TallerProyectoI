json.extract! imagen, :id, :urlImagen, :urlImagenPrevia, :created_at, :updated_at
json.url imagen_url(imagen, format: :json)
