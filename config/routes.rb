Rails.application.routes.draw do
  get 'about/index'

  get 'contact/index'

  root 'home#index'
end
