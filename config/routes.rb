Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'application#index'
  get '/thank_you', to: 'application#thank_you', as: 'thank_you_page'
  get '/thank_you_top', to: 'application#thank_you_top', as: 'thank_you_page_top'
  post '/contact_us', to: 'application#contact_us'
  post '/contact_us_top', to: 'application#contact_us_top'
end
