Rails.application.routes.draw do
  root 'home#index'
  # get 'home/search' => 'home#search'
  get '/search' => 'home#search', as: 'search'
end
