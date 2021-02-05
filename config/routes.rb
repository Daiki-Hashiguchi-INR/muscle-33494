Rails.application.routes.draw do
  get 'favorites/create'
  get 'favorites/destroy'
  devise_for :users
  root to: 'muscles#index'

  get '/muscles/startmuscle',  to: 'muscles#start_muscle'

  get '/muscles/searchmuscle',  to: 'muscles#search_muscle'
  resources :muscles, only: [:index,:new,:show,:create,:destroy] do
    collection do
      get 'search'
    end
  end


  resources :muscles
  resources :muscles do
    resources :comments, only: :create
    resource :favorites, only: [:create, :destroy]
  end
  resources :users
end
