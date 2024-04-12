Rails.application.routes.draw do
  get 'static_pages/home'
  get 'help'    => 'static_pages#help'
  resources :tasks
  resources :users
  #root "static_pages#home"
  get 'login' => 'sessions#new'
  post 'login' => 'sessions#create'
  get 'logout' => 'sessions#destroy' 
  get 'about'   => 'static_pages#about'
  get 'contact' => 'static_pages#contact'
  root "tasks#index"
end
