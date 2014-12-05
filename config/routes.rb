Rails.application.routes.draw do

  resources :lists

  resources :counselors, :users, :events

  ActiveAdmin.routes(self)


  # You can have the root of your site routed with "root"
  root 'users#index'



end
