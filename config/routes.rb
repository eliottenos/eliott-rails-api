# frozen_string_literal: true
Rails.application.routes.draw do
  resources :locations
  resources :examples, except: [:new, :edit]
  post '/sign-up' => 'users#signup'
  post '/sign-in' => 'users#signin'
  delete '/sign-out/:id' => 'users#signout'
  patch '/change-password/:id' => 'users#changepw'
  post '/create-location' => 'locations#create'
  patch '/update-location' => 'locations#update'
  delete '/delete-location' => 'locations#delete'
  resources :users, only: [:index, :show]
end
