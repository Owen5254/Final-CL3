Rails.application.routes.draw do
  devise_for :users
  get 'welcome/index'
  get '/score', to: 'welcome#score'
  post '/create_score', to: 'welcome#create_score'
  get '/person', to: 'welcome#person'
  post '/create_person', to: 'welcome#create_person'
  get '/result', to: 'welcome#result'
  root :to => "welcome#index"
end
