Rails.application.routes.draw do
  
  get   'sessions/new'
  get   'sessions/create'
  get   'sessions/destroy'

  get    'signup' => 'readers#new'
  get    'login' => 'sessions#new'
  post   'login' => 'sessions#create'
  delete 'logout' => 'sessions#destroy'

  resources :books
  resources :reviews

  resources :readers do 
    resources :reviews, only: [:index, :show, :new]
  end

  resources :books do
    resources :reviews, only: [:index, :show, :new]
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
