Rails.application.routes.draw do
  root 'statistics#new'

  post 'statistics/create'

  get 'statistics/show'
end
