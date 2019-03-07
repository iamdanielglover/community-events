Rails.application.routes.draw do
  # resources :user_events
  resources :locations
  resources :events do
    member do
      get 'add_user'
      post 'adding_user'
      get 'view_users'
    end
  end
  # post 'adding_user', action: :update, controller: 'events'
  resources :users do
      member do
        get 'active_events'
        get 'expired_events'
      end
    end
  resources :categories
  get '/', to: 'events#home'
  get '/search', to: 'events#search'

  get '/login' => 'sessions#new'
  post '/login' => 'sessions#create'
  get '/logout' => 'sessions#destroy'

  get '/signup' => 'users#new'
  post '/users' => 'users#create'
  get '/max_to_min', to: 'locations#max_to_min'
end
