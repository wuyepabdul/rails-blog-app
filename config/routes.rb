Rails.application.routes.draw do
  root "mains#index"
  get 'users/', to: 'users#index'
  get 'users/:user_id', to: 'users#show'
  get 'users/:user_id/posts', to: 'posts#index'
  get 'users/:user_id/posts/:id', to: 'posts#show'
end
