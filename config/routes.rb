Rails.application.routes.draw do
  resources :body_parts, only: [:index, :update, :destroy]
  resources :users do
    resources :affected_body_parts, shallow: true do
      resources :measuring_points
      resources :recordings
    end
  end
  root to: "body_parts#index"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
