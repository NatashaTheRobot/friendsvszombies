Friendsvszombies::Application.routes.draw do
  root to: 'facebook_login#new'
  resources :facebook_login
  match '/auth/facebook/callback', to: 'facebook_login#create'
end
