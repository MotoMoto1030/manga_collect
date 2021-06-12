Rails.application.routes.draw do
  devise_for :users
  root to: 'comics#index'
  resources :users, only: [:show]
  resources :comics, only: [:index, :new, :create, :show] do
    resources :likes, only: [:create, :destroy]
    collection do
      get 'search'
    end
  end
end
