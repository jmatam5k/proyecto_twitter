Rails.application.routes.draw do

  resources :tweets

  devise_for :users, controllers: {
    :registration => "users/registrations",
    :session => "users/sessions"
  }

  post 'likes/:tweet_id', to: 'likes#create', as: 'likes'

  root 'tweets#index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
