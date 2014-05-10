Rails.application.routes.draw do
  get 'contact/index', to: redirect('/contact')
  match '/contact', to: 'contact#index', via: :get

  root 'home#index'
end
