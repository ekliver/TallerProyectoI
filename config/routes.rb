Rails.application.routes.draw do

  resources :proveedors
  devise_for :users
  root "proveedors#index"

  namespace :api do
    namespace :v1 do
      resources :users
      resources :proveedors
    end
  end
  
end

