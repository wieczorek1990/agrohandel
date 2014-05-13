Rails.application.routes.draw do
  get 'history/index'
  match '/history', to: 'history#index', via: :get

  get 'contact/index', to: redirect('/contact')
  match '/contact', to: 'contact#index', via: :get

  root 'home#index'
end
