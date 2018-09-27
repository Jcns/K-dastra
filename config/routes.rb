Rails.application.routes.draw do
	get 'home/index'
  	post 'home/index'
	root 'home#index'
	resources :cadastro_prods
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
