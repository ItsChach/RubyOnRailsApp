Rails.application.routes.draw do
  devise_for :admins
  resources :projects do
    get 'list', :on => :collection
  end
  root to: 'projects#index'
end