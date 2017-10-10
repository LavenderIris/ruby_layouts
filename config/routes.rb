Rails.application.routes.draw do
  get 'posts/index'  => "posts#index"

  post 'post/create'    => "posts#new"

  get 'users/index'     => "users#index"

  post 'users/create'  => "users#new"

  
end
