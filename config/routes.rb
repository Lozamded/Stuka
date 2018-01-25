Rails.application.routes.draw do
  devise_for :users
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

  root 'welcome#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
