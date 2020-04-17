Rails.application.routes.draw do
  devise_for :local_users
  devise_for :match_users
  root 'static_pages#home'
  get '/login' ,to: 'static_pages#login'
  get '/match_home' ,to: 'static_pages#match_home'
  get '/local_home' ,to: 'static_pages#local_home'
end
