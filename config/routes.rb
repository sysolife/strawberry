Rails.application.routes.draw do

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'home#index'

  namespace :admin do
	  resources :products do
	    # resources :product_comments, shallow: true
	  end
	  # resources :categories
  end
end
