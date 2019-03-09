Rails.application.routes.draw do
  root to: 'aparts#index'

  resources :aparts
end
