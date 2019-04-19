Rails.application.routes.draw do
  root to: 'homes#index'
  resources :homes, only: %i[new create show edit update destroy]
end
