Rails.application.routes.draw do
  resources :blog_users
  resources :blog_posts
  resources :blog_photos
  
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
