Rails.application.routes.draw do
  devise_for :users
  root "problems#index"
  resources :problems do
    resources :comments, only: [:new, :create]
  end
end
