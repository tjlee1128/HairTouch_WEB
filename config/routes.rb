Rails.application.routes.draw do
  resources :shps
  resources :shpowns

  namespace :api do
    resources :shps, only: :index
  end
end
