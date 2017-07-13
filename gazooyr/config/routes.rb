Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :posts
  resources :home
  #Comment routing
  post   '/comments',     to: 'comments#create'
  #Gazooy routing
  get    '/gazooies',     to: 'gazooies#index'
  get    '/gazooies/1',   to: 'gazooies#show',   :id => '1'
  post   '/gazooies',     to: 'gazooies#create'
  #Hash_tags routing
  get    '/hash_tags/1',  to: 'hash_tags#show',  :id => '1'
  #News routing
  get    '/news',         to: 'news#index'
  get    '/news/new',     to: 'news#new'
  get    '/news/1',       to: 'news#show',       :id => '1'
  get    '/news/1/edit',  to: 'news#edit',       :id => '1'
  post   '/news',         to: 'news#create'
  put    '/news/1',       to: 'news#update',     :id => '1'
  delete '/news/1',       to: 'news#destroy',    :id => '1'
  #Pages routing
  get    '/super-page',   to: 'pages#show',      :id => 'super-page'
  get    '/pages/new',    to: 'pages#new'
  get    '/pages/1',      to: 'pages#show',      :id => '1'
  get    '/pages/1/edit', to: 'pages#edit',      :id => '1'
  post   '/pages',        to: 'pages#create'
  put    '/pages/1',      to: 'pages#update',    :id => '1'
  delete '/pages/1',      to: 'pages#destroy',   :id => '1'
  get    '/about',        to: 'pages#show',      :id => 'about'
  #Profiles routing
  get    'profiles/1',            to: 'profiles#show',      :id => '1'
  get    'profiles/1/edit',       to: 'profiles#edit',      :id => '1'
  put    '/profiles/1',           to: 'profiles#update',    :id => '1'
  post   'profiles/1/follow/2',   to: 'profiles#follow',    :profile_id => '1', :user_id => '2'
  delete 'profiles/1/unfollow/2', to: 'profiles#unfollow',  :profile_id => '1', :user_id => '2'
  get    'profiles/1/followers',  to: 'profiles#followers', :profile_id => '1'
  get    'profiles/1/followees',  to: 'profiles#followees', :profile_id => '1'
  get    'profiles/1/mentions',   to: 'profiles#mentions',  :profile_id => '1'

  devise_for :users
  root 'home#index'
end
