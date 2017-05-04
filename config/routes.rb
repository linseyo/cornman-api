Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root :to => "about#index"
  resources :about, only: [:index]
  resources :scores, only: [:index, :create]

  get '/about/dev', to: 'about#dev'

  match '*any' => 'application#options', :via => [:options]
end
