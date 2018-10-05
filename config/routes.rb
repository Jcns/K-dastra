Rails.application.routes.draw do
	namespace :api, defaults: { format: :json } do 
		resources :userapis
	end
	resources :cad_produtos
	devise_for :users
	get 'home/index'
	post 'home/index'
	root 'home#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
