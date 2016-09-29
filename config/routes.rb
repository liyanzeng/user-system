Rails.application.routes.draw do
  
  get 'sessions/new'

  get "log_out" => "sessions#destroy", :as => "log_out"
  get "log_in" => "sessions#new", :as => "log_in"
  get "sign_up" => "users#new", :as => "sign_up"
  root :to => "users#new"
  resources :users
  resources :sessions

  namespace :api, path: '/', constraints:{subdomain: 'api'} do
  	namespace :v1 do
      resources :users
      resources :user_logs
    end
  end

end
