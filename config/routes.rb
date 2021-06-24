Rails.application.routes.draw do
  resources :landing_page
  root to: "landing_page#index"
end
