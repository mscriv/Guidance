Rails.application.routes.draw do


  resources :lists do
  resources :items do

      patch :mark_complete
  end
  end

  resources :counselors, :users, :events

  ActiveAdmin.routes(self)

  root 'users#index'

end
