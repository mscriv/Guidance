Rails.application.routes.draw do


  resources :locations

  resources :tests

  resources :lists do
  resources :items do

      patch :mark_complete
  end
  end

  resources :counselors, :users, :events

  ActiveAdmin.routes(self)

  root 'users#index'

end
