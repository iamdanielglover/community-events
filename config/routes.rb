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
  resources :users
  resources :categories
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get '/', to: 'events#home'
  get '/search', to: 'events#search'
end
