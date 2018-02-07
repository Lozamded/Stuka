Rails.application.routes.draw do
  get 'adpociones/new'

  devise_for :users
  root 'welcome#index'
  get 'welcome/index'

  resources :veterinarios
  resources :consulta
  resources :gastos
  resources :insumos
  resources :boleta
  resources :proveedors
  resources :procedimientos
  resources :perros do
    get 'detalles', to: 'perros#detalle'
    get 'adopt', to: 'perros#adopt'
  end
  resources :propietarios


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
