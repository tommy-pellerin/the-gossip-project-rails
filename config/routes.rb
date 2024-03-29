Rails.application.routes.draw do
  get 'profil/show'
  get 'gossip/show'
  root "home#show"
  get '/welcome', to: 'home#show'
  get '/welcome/:first_name', to: 'home#show'
  # get '/gossip', to: 'gossip#show'
  get '/gossip/:id', to: 'gossip#show', as:"gossip"
  get '/profil/:id', to: 'profil#show', as:"profil"
  get '/contact', to: "contact#show"
  get '/team', to: "team#show"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  # Defines the root path route ("/")
  # root "posts#index"
  
end
