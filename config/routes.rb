Rails.application.routes.draw do
  root to: "apart#index"
  
  resources :aparts
end
