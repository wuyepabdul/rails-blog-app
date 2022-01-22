Rails.application.routes.draw do
  root "mains#index"
  resources :users, only: [:index, :show] do
    resources :posts do
      resources :comments, only: [:create]
      resources :likes, only: [:create]
    end
  end
end
