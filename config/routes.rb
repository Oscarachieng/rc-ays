Rails.application.routes.draw do
  resources :activities, only: [:index]
  resources :members, only: [:index, :destroy, :show]
end
