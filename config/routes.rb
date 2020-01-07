Rails.application.routes.draw do
  namespace :admin do
    resources :users
    resources :rubrics 
    resources :articles
  end

  devise_for :users

  resources :rubrics 
  resources :articles


  root 'rubrics#index'
end
