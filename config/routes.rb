Rails.application.routes.draw do
  resources :landing_page
  root to: "landing_page#index"
  get '/contact', to: 'additional_views#contact', as: 'contact'
  get '/about_us', to: 'additional_views#about_us', as: 'about_us'
  resources :users
end
