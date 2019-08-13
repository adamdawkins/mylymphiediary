Rails.application.routes.draw do
  resources :tokens, path: :auth
  resources :body_parts, only: [:index, :update, :destroy]
  resources :users, only: [:new, :create]
  resources :affected_body_parts do
    resources :measuring_points
    resources :recordings
  end
  root to: "body_parts#index"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
