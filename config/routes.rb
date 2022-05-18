Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  resources :services, only: [:index, :show]
  resources :user_cart, only: [:new, :create]

  resources :orders, only: [:show, :create] do
    resources :payments, only: :new
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
