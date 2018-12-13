Rails.application.routes.draw do
  resources :users
  post '/hackathonlist', to: 'hackathonlist#create'
  get '/current_user', to: "auth#show"
  post '/login', to: 'auth#create'
  get '/hackathon_search', to: "hackathons#find"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
