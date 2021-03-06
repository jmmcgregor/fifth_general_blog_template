Rails.application.routes.draw do
  root 'blog_posts#index'
  resources :blog_users
  resources :blog_posts
  resources :blog_photos
  get    '/login',   to: 'sessions#new'
  post   '/login',   to: 'sessions#create'
  delete '/logout',  to: 'sessions#destroy'
  get '/new', to: 'blog_posts#new'
  get '/blog_posts/:name', to: "blog_posts#show"
  get '/learning_center', to: "blog_posts#index"

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
