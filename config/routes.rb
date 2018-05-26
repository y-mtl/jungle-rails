Rails.application.routes.draw do

  root to: 'products#index'

  resources :products, only: [:index, :show] do
    resources :reviews, only: [:create, :destroy]
  end

  resources :categories, only: [:show]

  resource :cart, only: [:show] do
    put    :add_item
    delete :remove_item
  end

  # users signup/login and sessions
  #resources :users, only: [:create, :new]
  #
  #resources :users only:[:new, :create]

  #resource :session only:[:new, :create, :destroy]

  get '/login'  => 'sessions#new'
  post '/login' => 'sessions#create'
  get '/logout' => 'sessions#destroy'

  get '/signup' => 'users#new'
  post '/users' => 'users#create'

  resources :orders, only: [:create, :show]

  namespace :admin do
    root to: 'dashboard#show'
    resources :products, except: [:edit, :update, :show]
    resources :categories, only: [:index, :new, :create, :update]
    #add :destroy in [] if it's required to have delete category from admin/categories
  end

end