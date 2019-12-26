Rails.application.routes.draw do
 
  devise_for :users

  resources :rubrics 
  resources :articles


  root 'rubrics#index'
end
