Rails.application.routes.draw do
  get 'comments/create'
  root "mains#index"
  resources :users, only: [:index, :show] do
    resources :posts do
      resources :comments, only: [:new, :create]
      resources :likes, only: [:create]
    end
  end
end
