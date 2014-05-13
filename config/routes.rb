Rails.application.routes.draw do
    get 'history/index'

    get 'contact/index'

    root 'home#index'
end
