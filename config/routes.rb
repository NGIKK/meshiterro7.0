Rails.application.routes.draw do
  # get 'users/show'
  # get 'users/edit'
  # get 'post_images/new'
  # get 'post_images/index'
  # get 'post_images/show'
  root to: "homes#top"
  devise_for :users
  devise_scope :user do
     get '/users/sign_out' => 'devise/sessions#destroy'
  end
  
  resources :post_images,only: [:new,:create,:index,:show,:destroy]
  resources :users,only: [:show,:edit]
  # get 'postimages/new'
  # get 'postimages/index'
  # get 'postimages/show'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
 
 get 'homes/about' =>'homes#about',as:'about'
end
