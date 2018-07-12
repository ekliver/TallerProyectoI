Rails.application.routes.draw do

  resources :empresas
  resources :ejes
  resources :beneficios
  resources :proveedors
  devise_for :users
  root "proveedors#index"

  namespace :api do
    namespace :v1 do
      resources :users
      resources :proveedors
      resources :beneficios
      resources :ejes
      resources :empresas
    end
  end
  
   get 'dashboard/estadisticas'
  
end

