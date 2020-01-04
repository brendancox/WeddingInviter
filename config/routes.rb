Rails.application.routes.draw do
  root 'welcome#index'
  get '/reception', to: 'invite#reception'
  post '/rsvp', to: 'invite#rsvp'
  get '/responses', to: 'invite#responses'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
