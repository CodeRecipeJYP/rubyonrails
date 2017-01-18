Rails.application.routes.draw do
  resources :posts
  get 'pages/home2'
  get 'pages/home'
  get '/' => 'pages#home'


  resources :users
  get 'signup' => 'users#new'

  get 'login' => 'sessions#new'
  post 'login' => 'sessions#create'
  delete 'logout' => 'sessions#destroy'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
