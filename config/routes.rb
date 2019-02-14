Rails.application.routes.draw do
  devise_for :admins
  root 'welcome#index'
  resources :categories
  resources :questions
  resources :options
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
