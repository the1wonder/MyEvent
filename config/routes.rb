Rails.application.routes.draw do
  devise_for :users
  # get 'stylish_portfolios/index'
  root 'stylish_portfolios#index'
  get 'welcome/index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
