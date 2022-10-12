Rails.application.routes.draw do
  resources :councils, only: [:index,:show]
  resources :activities, only: [:index, :show,:create, :update, :destroy]
  resources :members, only: [:index, :destroy, :show]
end
