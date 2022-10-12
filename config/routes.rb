Rails.application.routes.draw do
  resources :activities, only: [:index, :show,:create]
  resources :members, only: [:index, :destroy, :show]
end
