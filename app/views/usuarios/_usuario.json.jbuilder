json.extract! usuario, :id, :logiUsuario, :nomUsuario, :correoUsuario, :apeUsuario, :numDni, :numCelular, :imgUsuario, :created_at, :updated_at
json.url usuario_url(usuario, format: :json)
