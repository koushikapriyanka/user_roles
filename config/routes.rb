Rails.application.routes.draw do
  resources :user_images
  resources :user_meta
  resources :user_roles
  resources :users do
    collection do
      get :users_without_roles
    end
  end
  resources :roles
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
