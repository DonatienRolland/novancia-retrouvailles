Rails.application.routes.draw do
  root to: 'pages#home'
  devise_for :users, controllers: { omniauth_callbacks: 'users/omniauth_callbacks' }
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :pictures do
    member do
      put "like" => "pictures#upvote"
      put "unlike" => "pictures#downvote"
    end
  end

  get 'sitemap.xml', to: 'pages#sitemapnovapp', as: 'sitemap'
  get 'last-picture', to: 'pictures#last_picture', as: 'last_picture'
  get 'doublescreen', to: 'pages#doublescreen', as: 'doublescreen'

  get 'avemteam', to: 'pages#avemteam'
  get 'trucdemaladeAVEMCREATION', to: 'pages#trucdemaladeAVEMCREATION'

  post 'password/forgot', to: 'password#forgot'
  post 'password/reset', to: 'password#reset'

end
