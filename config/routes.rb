Rails.application.routes.draw do
  mount Ckeditor::Engine => '/ckeditor'
  resources :solutions
  resources :programs
  resources :countries
  devise_for :users
  root 'pages#index'
end
