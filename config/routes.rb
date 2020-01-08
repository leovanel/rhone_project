Rails.application.routes.draw do
  namespace :admin do
    resources :users
    resources :rubrics 
    resources :articles
  end

  devise_for :users

  resources :rubrics do
    resources :rubric_images, only: [:create]
  end
  resources :articles


  root 'rubrics#index'
end
