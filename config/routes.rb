Rails.application.routes.draw do
  root "sessions#home"
  get    'signup' => 'readers#new'
  get    'login' => 'sessions#new'
  post   'login' => 'sessions#create'
  delete 'logout' => 'sessions#destroy'
  get '/auth/facebook/callback', to: 'sessions#facebook'
  get '/auth/:provider/callback', to: 'sessions#omniauth'
  get 'five_star' => 'books#five_star'
  

  resources :books
  resources :reviews

  resources :readers do 
    resources :reviews, only: [:index, :show]
  end

  resources :books do
    resources :reviews, only: [:index, :show, :new]
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
