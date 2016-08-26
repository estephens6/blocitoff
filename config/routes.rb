Rails.application.routes.draw do
  devise_for :users

  resources :users, only: [:show] do
    resources :items, only: [:create, :destroy]
  end

  root to: 'users#root_redirect'
end