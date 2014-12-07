Rails.application.routes.draw do

  resources :schools

  resources :requirements do
    resources :diplomas
  end

  resources :diplomas do
  resources :subjects
end


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
