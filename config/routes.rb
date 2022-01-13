Rails.application.routes.draw do
  namespace :users do
    get '/' => 'user#index'
    get '/:user_id' => 'users#show'
    get '/:user_id/posts' => 'posts#index'
    get '/:user_id/posts/:id' => 'posts#show'
  end

  
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
