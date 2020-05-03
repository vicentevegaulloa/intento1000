Rails.application.routes.draw do
  devise_for :local_users
  devise_for :match_users
  root 'static_pages#home'
  get '/login' ,to: 'static_pages#login'
  get '/match_home' ,to: 'match_app#match_home'
  get '/match_perfil' ,to: 'match_app#match_perfil'
  get '/match_match' ,to: 'match_app#match_match'
  get '/match_locales' ,to: 'match_app#match_locales'
  get '/match_inbox' ,to: 'match_app#match_inbox'
  get '/local_home' ,to: 'local_app#local_home'
  get '/local_locales' ,to: 'local_app#local_locales'
  get '/local_mi_local' ,to: 'local_app#local_mi_local'
  get '/local_muro' ,to: 'local_app#local_muro'
end
