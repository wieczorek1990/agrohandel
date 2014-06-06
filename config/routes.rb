Rails.application.routes.draw do
  get 'about/index'

  get 'contact/index'

  root 'contact#index'
end
