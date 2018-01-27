Rails.application.routes.draw do

  namespace :gallery do
    resources :categories do
      resources :images
    end
  end
  
end
