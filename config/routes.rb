Rails.application.routes.draw do
  resources :member_activities, only: [:create, :update]
  resources :resources, only: [:index, :show, :create,:update, :destroy]
  resources :councils, only: [:index,:show,:create,:update,:destroy]
  resources :activities, only: [:index, :show,:create, :update, :destroy]
  resources :members, only: [:index, :destroy, :show]

  post "/login", to: "sessions#create"
  get "/me", to: "users#show"
  delete "/logout", to: "sessions#destroy"
end
