Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root "welcome#index"

  namespace :api do
    namespace :v1 do
        get '/news', to: 'news#index'
        post '/users', to: "users#create"
        post '/sessions', to: "sessions#create"
        post '/favorites/:id', to: "favorites#create"
    end
  end

  resources :users
end