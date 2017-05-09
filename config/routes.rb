# frozen_string_literal: true
Rails.application.routes.draw do
  # resources :locations
  resources :examples, except: [:new, :edit, :destroy]
  post '/sign-up' => 'users#signup'
  post '/sign-in' => 'users#signin'
  delete '/sign-out/:id' => 'users#signout'
  patch '/change-password/:id' => 'users#changepw'
  post '/create-location' => 'locations#create'
  patch '/update-location/:id' => 'locations#update'
  delete '/destroy-location/:id' => 'locations#destroy'
  # get '/get-location/:id' => 'locations#show'
  resources :users, only: [:index, :show, :update]
  resources :locations, except: [:new, :edit, :update]
end
