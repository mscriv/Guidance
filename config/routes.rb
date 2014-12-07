Rails.application.routes.draw do



  resources :subjects

  resources :diplomas

  resources :requirements

  resources :tests do
    collection do
      post 'search', to: 'tests#search'
    end
    resources :locations
  end

  resources :lists do
  resources :items do

      patch :mark_complete
  end
  end

  resources :counselors, :users, :events

  ActiveAdmin.routes(self)

  root 'users#index'

end
