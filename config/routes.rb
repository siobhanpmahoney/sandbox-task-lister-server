Rails.application.routes.draw do




  namespace :api do
    namespace :v1 do 
      resources :users
      resources :tasks
      resources :lists
      resources :emails
      resources :downloads
      resources :uploads
    end 
  end 

  
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
