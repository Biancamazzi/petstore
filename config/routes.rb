Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  resources :services, only: [:index, :show] do
    resources :user_cart, only: [:new, :create]
  end

  resources :user_cart, only: [:show] do
    resources :payment, only: [:new]
  end
  mount StripeEvent::Engine, at: '/stripe-webhooks'
  # resources :user_cart, only: [:index] do
  #     member do
  #   post :approved
  #   post :denied
  # end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
