Rails.application.routes.draw do
  # devise_for :users, controllers: {
  #   sessions: 'users/registrations'
  # }

  devise_for :users, controllers: { registrations: "registrations" }

  root to: 'pages#home'


  resources :users, only: [:index, :show]

  resources :chatrooms, only: [:show, :index, :create] do
    resources :messages, only: :create
  end


  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
