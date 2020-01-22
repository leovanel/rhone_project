Rails.application.routes.draw do
  namespace :admin do
    resources :users
    resources :rubrics do
      resources :rubric_images, only: [:create]
    end
    resources :articles do
      resources :article_images, only: [:create]
      resources :paragraphs, only:[:create,:update] do
        resources :ph_images, only: [:create]
      end
    end
  end

  devise_for :users

  resources :rubrics 
  resources :articles do
    resources :paragraphs 
  end


  root 'rubrics#index'
end
