Rails.application.routes.draw do
  resources :tasks, only: [:index, :show] do
    member do
      post :done
    end
    resources :events, only: :create
  end

  devise_for :users, controllers: {
        registrations: 'users/registrations'
      }

  resources :events, only: :index

  root 'tasks#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
