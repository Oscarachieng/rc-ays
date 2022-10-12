Rails.application.routes.draw do
  resources :activities, only: [:index, :show]
  resources :members, only: [:index, :destroy, :show]
end
