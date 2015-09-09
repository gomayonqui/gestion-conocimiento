Rails.application.routes.draw do
  mount Ckeditor::Engine => '/ckeditor'
  namespace :admin do
    resources :solutions
    resources :programs
    resources :countries
  end
  resources :countries, only: :index
  resources :programs, only: :index
  resources :solutions
  devise_for :users
  root 'pages#index'
end
