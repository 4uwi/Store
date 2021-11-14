Rails.application.routes.draw do
  resources :admins, only: %i[edit index]
  devise_for :users, :path_prefix => 'my', controllers:{
    sessions: 'users/sessions'
  }
  resources :users, only: %i[destroy edit update]

  resources :admins, only: %i[index  put]

  resources :items, only: %i[index new edit create update destroy]


  root 'pages#index'
end
