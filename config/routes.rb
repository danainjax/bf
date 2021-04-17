Rails.application.routes.draw do
  

  resources :readers 
  resources :reviews

  resources :books do
    resources :reviews, only: [:index, :show, :new]
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
