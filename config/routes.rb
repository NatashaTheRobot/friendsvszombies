Friendsvszombies::Application.routes.draw do
  root to: 'games#new'
  resources :users
  resources :games
  match '/auth/facebook/callback', to: 'sessions#create'
  match '/signout' => 'sessions#destroy', as: :signout
end
