Rails.application.routes.draw do
  resources :resources, only: [:index, :show, :create,:update]
  resources :councils, only: [:index,:show,:create,:update,:destroy]
  resources :activities, only: [:index, :show,:create, :update, :destroy]
  resources :members, only: [:index, :destroy, :show]
end
