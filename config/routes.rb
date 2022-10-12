Rails.application.routes.draw do
  resources :activities, only: [:index, :show,:create, :update]
  resources :members, only: [:index, :destroy, :show]
end
