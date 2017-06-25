Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: 'users#new'
  get '/main' => 'users#new'
  get '/dashboard/:id' => 'users#show'

  resources :users
  resources :sessions
  resources :shoes
  #resources :secrets
  #resources :likes

  end


  #get '/dojos' => 'users#index'
  #get '/dojos/new' => 'users#new'
  #get '/dojos/:id' => 'users#show'
  #get '/dojos/:id/edit' => 'users#edit'
  #post '/dojos' => 'users#create'
  #patch '/dojos/:id' => 'users#update'
  #delete '/dojos/:id' => 'users#destroy'
