class Api::V1::UsuariosController < ApplicationController
    
    skip_before_action :verify_authenticity_token
    
    def index
        usuarios = Usuario.order("created_at DESC")
        render json: {status: 'Exitoso', message: 'Lista de usuarios', data: usuarios}, status: :ok
    end

    def show
        usuario = Usuario.find(params[:id])
        render json: {status: 'Exitoso', message: 'Usuario encontrado', data: usuario}, status: :ok
    end
    
    def create
        usuario = Usuario.new(usuario_params)
        
        if usuario.save
            render json: {status: 'Exitoso', message: 'Usuario creado', data: usuario}, status: :ok
        else
            render json: {status: 'Error', message: 'No se grabo usuario', data: usuario.errors}, status: :unprocessable_entity
        end

    end
    
    def usuario_params
        params.require(:usuario).permit(:logiUsuario, :nomUsuario, :correoUsuario, :apeUsuario, :numDni, :numCelular, :imgUsuario)
    end
    

end