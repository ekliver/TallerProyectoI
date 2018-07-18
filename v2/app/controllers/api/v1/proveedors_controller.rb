class Api::V1::ProveedorsController < ApplicationController
    def index
		proveedors = Proveedor.order("created_at DESC")
        render json: {status: 'Exitoso', message: 'Lista de proveedores', data: proveedors}, status: :ok
    end
    
    def show
        proveedor = Proveedor.find(params[:id])
        render json: {status: 'Exitoso', message: 'Proveedor encontrado', data: proveedor}, status: :ok
    end
    
end