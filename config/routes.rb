Rails.application.routes.draw do
  root to: 'posts#index'
  devise_for :users
  resources :posts
  resources :orders do
    member do
      get 'user'
    end
  end
end

