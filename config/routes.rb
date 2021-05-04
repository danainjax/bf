Rails.application.routes.draw do
  root "sessions#home"
  get    'signup' => 'readers#new'
  get    'login' => 'sessions#new'
  post   'login' => 'sessions#create'
  delete 'logout' => 'sessions#destroy'
  get '/auth/:provider/callback', to: 'sessions#omniauth'
  get 'five_star' => 'books#five_star'
  

  # resources :books
  resources :reviews

  resources :readers, except: [:index] do 
    resources :reviews, only: [:index, :show]
  end

  resources :books, only: [:index, :show] do
    resources :reviews, shallow: true
    #shallow gives me [:index, :new, :create]
  end

  # get '*path', to: 'books#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
