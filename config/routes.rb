Rails.application.routes.draw do
  resources :landing_page
  root to: "landing_page#index"
  get '/contact', to: 'additional_views#contact', as: 'contact'
end
