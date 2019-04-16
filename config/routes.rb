Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: 'home#index'
  get '/about',   to: 'home#index'
  get '/contact', to: 'home#index'

  # router でいくら記述しても routes.rb　に書かないとrails としては許容しない

  namespace :api, format: 'json' do
    resources :tasks, only: [:index, :create, :update]
  end
end
