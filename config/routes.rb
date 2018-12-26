Rails.application.routes.draw do
  resources :users
  patch '/users/:userId', to: 'users#update'
  post '/hackathonlist', to: 'hackathonlist#create'
  get '/current_user', to: "auth#show"
  post '/login', to: 'auth#create'
  get '/hackathon_search', to: "hackathons#find"
  post '/hackathonlistDelete', to: "hackathonlist#delete"
  get '/hackathons', to: 'hackathons#show'
  post '/hackathons', to: 'hackathons#create'
  delete '/hackathons/:id', to: 'hackathons#destroy'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
