Rails.application.routes.draw do
  devise_for :users, path: '', path_names: { sign_in: 'login', sign_out: 'logout' }
  resources :users

  resources :hosts

  resources :visitors do
    member do
      get 'depart'
    end
    collection do
      get 'present', to: 'visitors#index'
    end
  end

  root to: 'visitors#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
