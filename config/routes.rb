Rails.application.routes.draw do
  resources :grupo_caracteristicas
  resources :cadastro_produtos
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
