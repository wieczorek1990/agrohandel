Rails.application.routes.draw do
  get 'history/index', to: redirect('/history')
  match '/history', to: 'history#index', via: :get

  get 'contact/index', to: redirect('/contact')
  match '/contact', to: 'contact#index', via: :get

  root 'home#index'
end
