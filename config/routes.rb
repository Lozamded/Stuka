Rails.application.routes.draw do
  devise_for :users
  root 'welcome#index'

  resources :veterinarios
  get 'welcome/index'

  resources :consulta
  resources :gastos
  resources :insumos
  resources :boleta
  resources :proveedors
  resources :procedimientos
  resources :perros
  resources :propietarios

  
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
