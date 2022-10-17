Rails.application.routes.draw do
  resources :activity_registrations, only: [:create, :index]
  resources :member_activities, only: [:create, :update]
  resources :resources, only: [:index, :show, :create,:update, :destroy]
  resources :councils, only: [:index,:show,:create,:update,:destroy]
  resources :activities, only: [:index, :show,:create, :update, :destroy]
  resources :members, only: [:index, :destroy, :show, :create]

  post "/login", to: "sessions#create"
  get "/me", to: "members#show"
  delete "/logout", to: "sessions#destroy"
end
