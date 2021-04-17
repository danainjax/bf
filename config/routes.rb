Rails.application.routes.draw do
  
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
