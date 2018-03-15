Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  #get 'calculateTotalDuration', to: 'todos#'
  resources :sessions, only: [:create, :destroy]
  resources :todos do
      resources :items
    end
  resources :contacts
end
