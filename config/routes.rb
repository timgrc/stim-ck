Rails.application.routes.draw do
  root to: 'postits#new'

  get '/ck', to: 'postits#index'
  resources :postits, only: [:create, :edit, :update, :destroy]
end
