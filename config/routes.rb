Rails.application.routes.draw do
  resources :carts, :defaults => { :format => 'json' }
  resources :products, :defaults => { :format => 'json' }
  devise_for :users, :defaults => { :format => 'json' }, controllers: { sessions: 'user/sessions', registrations: 'user/registrations' }
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
