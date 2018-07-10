class Api::V1::BeneficiosController < ApplicationController
    
    skip_before_action :verify_authenticity_token
    
    def index
        beneficios = Beneficio.order("created_at DESC")
        render json: {status: 'Exitoso', message: 'Lista de beneficios', data: beneficios}, status: :ok
    end

    def show
        beneficio = Beneficio.find(params[:id])
        render json: {status: 'Exitoso', message: 'Beneficio encontrado', data: beneficio}, status: :ok
    end
    
    def create
        beneficio = Beneficio.new(beneficio_params)
        
        if beneficio.save
            render json: {status: 'Exitoso', message: 'Beneficio creado', data: beneficio}, status: :ok
        else
            render json: {status: 'Error', message: 'No se grabo beneficio', data: beneficio.errors}, status: :unprocessable_entity
        end

    end
    
    def beneficio_params
        params.require(:beneficio).permit(:nomBeneficio, :imgBeneficio, :puntBeneficio, :porcDescuento, :inFavorito, :idFavorito, :idEje, :nomEje, :iconEje, :iconSEje, :idLocal, :inAbierto, :numLongitud, :numLatitud, :numDistancia, :nomDistrito)
    end
    

end