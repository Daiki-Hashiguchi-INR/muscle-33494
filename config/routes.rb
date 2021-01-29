Rails.application.routes.draw do
  devise_for :users
  root to: 'muscles#index'
  resources :muscles
  resources :muscles do
    resources :comments, only: :create
  end
end
