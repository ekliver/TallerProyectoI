Rails.application.routes.draw do

  resources :beneficios
  resources :proveedors
  devise_for :users
  root "proveedors#index"

  namespace :api do
    namespace :v1 do
      resources :users
      resources :proveedors
      resources :beneficios
    end
  end
  
   get 'dashboard/estadisticas'
  
end

