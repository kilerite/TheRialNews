Rails.application.routes.draw do
  resources :posts
  devise_for :users
  get 'home/index'

  authenticated :user do
    root 'posts#index', as: 'authenticated_root'
  end

  devise_scope :user do

end
