Rails.application.routes.draw do
  root to: 'postits#new'

  get '/ck', to: 'postits#index'
  get '/to_xlsx', to: 'postits#to_xlsx'
  resources :postits, only: [:create, :edit, :update, :destroy]
end
