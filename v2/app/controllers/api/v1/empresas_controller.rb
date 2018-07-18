class Api::V1::EmpresasController < ApplicationController
    
    skip_before_action :verify_authenticity_token
    
    def index
        empresas = Empresa.order("created_at DESC")
        render json: {status: 'Exitoso', message: 'Lista de empresas', data: empresas}, status: :ok
    end

    def show
        empresa = Empresa.find(params[:id])
        render json: {status: 'Exitoso', message: 'Empresa encontrado', data: empresa}, status: :ok
    end
    
    def create
        empresa = Empresa.new(empresa_params)
        
        if empresa.save
            render json: {status: 'Exitoso', message: 'Empresa creado', data: empresa}, status: :ok
        else
            render json: {status: 'Error', message: 'No se grabo empresa', data: empresa.errors}, status: :unprocessable_entity
        end

    end
    
    def empresa_params
        params.permit(:nomEmpresa, :desEmpresa, :urlLogo, :numSoporte, :nomSkype, :inClave)
    end
    

end