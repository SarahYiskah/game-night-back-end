Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      get '/users/:username', to: 'users#show'
      post '/users', to: 'users#create'
      resources :rooms
    end
  end
end
