Rails.application.routes.draw do
  get 'welcome/index'

  resources :concerts, only: [:show, :new, :create]

  root to: "concerts#index"
  root 'welcome#index'

#mount Attachinary::Engine => "/attachinary"

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
