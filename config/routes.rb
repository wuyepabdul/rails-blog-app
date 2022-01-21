Rails.application.routes.draw do
  root "mains#index"
  resources :users, only: [:index, :show] do
    resources :posts, only: [:index, :new, :show]
  end
end
