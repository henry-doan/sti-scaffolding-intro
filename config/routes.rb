Rails.application.routes.draw do
  root 'zoos#index'

  resources :zoos do
  	resources :animals
  	resources :lions, controller: 'animals', type: 'Lion'
  	resources :bears, controller: 'animals', type: 'Bear'
  	resources :elephants, controller: 'animals', type: 'Elephant'
  	resources :apes, controller: 'animals', type: 'Ape'
  	resources :cats, controller: 'animals', type: 'Cat'
  end
end
