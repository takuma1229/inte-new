Rails.application.routes.draw do
  get 'sessions/new'
  root 'static_pages#index'
  resources :static_pages, only: [:index]
  resources :users do
    member do
      get 'detail'
      patch 'detailcreate'
    end
  end
  resources :sessions, only: [:index, :create, :destroy]
end
