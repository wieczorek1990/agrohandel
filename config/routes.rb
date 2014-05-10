Rails.application.routes.draw do
  get 'contact/index'

  root 'home#index'
end
