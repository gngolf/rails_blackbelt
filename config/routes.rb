Rails.application.routes.draw do

  root to: 'users#index'
  get '/sessions' => 'sessions#create'
  post '/sessions' => 'sessions#create'
  get 'sessions/destroy' => 'sessions#destroy'
  delete 'sessions/destroy' => 'sessions#destroy'


  

  get 'songs/:id/show' => 'songs#show'
  get 'songs/new' => 'songs#new'
  get 'songs/:id/add' => 'songs#add'
  post 'songs/:id/add' => 'songs#add'
  post 'songs/new' => 'songs#create'

  
  get 'users/:id/home' => 'users#home'
  get 'users/:id' => 'users#show'
  get 'users/index'
  get 'users/home'
  get 'users/show'
  get 'users/new' => 'users#new'
  post 'users/new' => 'users#create'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
