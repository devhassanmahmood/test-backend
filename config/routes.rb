Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      resources :users
      resources :mirrors
      resources :apps
      resources :mirror_apps
      resources :weathers
      # resources :sessions
post '/users/', to: 'users#create'
post '/sessions', to: 'sessions#create'
get '/apps/', to: 'apps#index'
get '/users/:user_id/apps', to: 'users#users_apps'
    end
  end
end
