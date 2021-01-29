Rails.application.routes.draw do
  get 'favorites/create'
  get 'favorites/destroy'
  devise_for :users
  root to: 'muscles#index'
  resources :muscles
  resources :muscles do
    resources :comments, only: :create
    resource :favorites, only: [:create, :destroy]
  end
  resources :users
end
