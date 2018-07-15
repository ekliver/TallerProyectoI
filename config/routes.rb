Rails.application.routes.draw do

  resources :usuarios
  resources :imagens
  resources :locals
  resources :servicios
  resources :empresas
  resources :ejes
  resources :beneficios
  resources :proveedors
  
  
  devise_for :users
  root "proveedors#index"


  namespace :api do
    namespace :v1 do
      resources :usuarios
      resources :users
      resources :proveedors
      resources :beneficios
      resources :ejes
      resources :empresas
    end
  end
  
   get 'dashboard/estadisticas'
  
end

