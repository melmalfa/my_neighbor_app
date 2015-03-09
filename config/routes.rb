Rails.application.routes.draw do

  get '/' => 'sessions#new'

  get '/login' => 'sessions#new'
  post '/login' => 'sessions#create'
  delete '/logout' => 'sessions#destroy'

  resources :users, only: [:show, :edit, :update]
  resources :campaigns, only: [:index, :show]
  resources :voters, only: [:index, :show, :edit, :update] do
    resources :visits, only: [:create]
  end

end
