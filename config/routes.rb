Rails.application.routes.draw do
  get 'messages/new'

  get 'messages/create'

  root to: 'visitors#index'
  devise_for :users
  resources :users
  
  #get '/jobs', to: 'jobs#index'
  #get '/jobs/new', to: 'jobs#new', as: 'new_job'
  #post '/jobs', to: 'jobs#create'
  #get '/jobs/:id/edit', to: 'jobs#edit', as: 'edit_job'
  #patch '/jobs/:id', to: 'jobs#update'
  #get '/jobs/:id', to: 'jobs#show', as: 'job'
  #delete '/jobs/:id', to: 'jobs#destroy'
  
  resources :jobs do
   resources :comments
  end
 
  match '/contacts',     to: 'contacts#new',             via: 'get'
  resources "contacts", only: [:new, :create]
  
  
  resources :messages, only: [:new, :create]
  
 
  
end
