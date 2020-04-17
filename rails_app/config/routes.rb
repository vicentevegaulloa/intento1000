Rails.application.routes.draw do
  devise_for :local_users
  devise_for :match_users
  root 'static_pages#home'
  get 'static_pages/home'
end
