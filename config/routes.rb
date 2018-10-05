Rails.application.routes.draw do
  	mount_devise_token_auth_for 'Userapi', at: 'auth'
	resources :cad_produtos
	devise_for :users
	get 'home/index'
	post 'home/index'
	root 'home#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
