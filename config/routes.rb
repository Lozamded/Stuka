Rails.application.routes.draw do
  resources :con_vets
  resources :con_procs
  get 'adpociones/new'

  devise_for :users, controllers: 
  {
    sessions: 'users/sessions'
  }

  root 'welcome#index'
  get 'welcome/index'

  resources :veterinarios
  resources :consulta do
    resources :con_procs
    resources :con_vets
  end
  resources :gastos
  resources :insumos
  resources :boleta
  resources :socios
  resources :proveedors
  resources :procedimientos
  resources :perros do
    get 'detalles', to: 'perros#detalle'
    get 'adopt', to: 'perros#adopt'
  end
  resources :propietarios


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
