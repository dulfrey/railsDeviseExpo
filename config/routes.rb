Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  #get 'calculateTotalDuration', to: 'todos#'
  resources :todos do
      resources :items
    end
    
    config.action_dispatch.default_headers = {
      'Acces-Control-Allow-Origin' => '*'
    }
end
