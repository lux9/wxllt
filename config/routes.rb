Rails.application.routes.draw do
  root to: 'pages#home'
  resources :pics, only: [:create, :destroy]
  resources :backgrounds, only: [:create]
  delete "destroy_all_posts", to: "pics#destroy_all_posts"
  delete "destroy_background", to: "backgrounds#destroy_background"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
