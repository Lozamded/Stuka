Rails.application.routes.draw do
  resources :consulta
  resources :gastos
  resources :insumos
  resources :boleta
  resources :proveedors
  resources :procedimientos
  resources :perros
  resources :propietarios

  root 'principal#principal_index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
