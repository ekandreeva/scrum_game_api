Rails.application.routes.draw do

  resources :game_statistics
  devise_for :users

end
