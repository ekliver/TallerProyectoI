json.extract! servicio, :id, :nomServicio, :inActivo, :created_at, :updated_at
json.url servicio_url(servicio, format: :json)
