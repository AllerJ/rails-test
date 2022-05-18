Rails.application.routes.draw do
  root "companies#index"

  resources :companies do
    resources :tasks
  end
end
