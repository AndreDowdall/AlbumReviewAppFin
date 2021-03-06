Rails.application.routes.draw do
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  devise_for :users, controllers: { confirmations: 'confirmations'}
	resources :albums do
		resources :reviews
	end
	root 'albums#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
