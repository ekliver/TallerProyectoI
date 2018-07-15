class Api::V1::EjesController < ApplicationController
    
    skip_before_action :verify_authenticity_token
    
    def index
        ejes = Eje.order("created_at DESC")
        render json: {status: 'Exitoso', message: 'Lista de usuarios', data: ejes}, status: :ok
    end

    def show
        eje = Eje.find(params[:id])
        render json: {status: 'Exitoso', message: 'Usuario encontrado', data: eje}, status: :ok
    end
    
    def create
        eje = Eje.new(eje_params)
        
        if eje.save
            render json: {status: 'Exitoso', message: 'User creado', data: eje}, status: :ok
        else
            render json: {status: 'Error', message: 'No se grabo user', data: eje.errors}, status: :unprocessable_entity
        end

    end
    
    def eje_params
        params.permit(:email, :encrypted_password, :created_at)
    end
    

end