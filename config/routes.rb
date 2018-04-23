Rails.application.routes.draw do
  get 'home/show'
  get 'sessions/create'
  get 'sessions/destroy'
  	get 'welcome/index'
	  
  	resources :articles
	  
  	root 'welcome#index'

	resources :articles do
	  	resources :comments
	end

	get 'auth/:provider/callback', to: 'sessions#create'
    get 'auth/failure', to: redirect('/')
    get 'signout', to: 'sessions#destroy', as: 'signout'

    resources :sessions, only: [:create, :destroy]
end

