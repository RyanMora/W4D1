Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  # resources :users
  # get 'users/:id' => 'users#show'
  # get 'users/' => 'users#index'
  # post 'users/' => 'users#create'
  # get 'users/new' => 'users#new'
  # get 'users/:id/edit' => 'users#edit'
  # patch 'users/:id' => 'users#update'
  # put 'users/:id' => 'users#update'
  # delete 'users/:id' => 'users#destroy'

  resources :users, only: [:index, :create, :show, :update, :destroy]
  resources :artworks, only: [:create, :show, :update, :destroy]
  resources :artwork_shares, only: [:create, :destroy]
  resources :users do
    resources :artworks, only: :index
  end
  resources :comments, only: [:create, :destroy, :index]
end
