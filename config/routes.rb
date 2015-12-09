Rails.application.routes.draw do
  root to: 'site#home'
  get '/contact' => 'site#contact'
  get '/projects' => 'projects#index'
  get '/projects/new' => 'projects#new'
  post '/projects' => 'projects#create'
  get 'projects/:id' => 'projects#show'
end
