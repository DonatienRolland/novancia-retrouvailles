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
  get 'sitemap.xml', to: 'pages#sitemap'
end
