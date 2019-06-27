Rails.application.routes.draw do
  get 'details/index'
  get 'details/index/:id', to: 'details#index'

  get 'home/index'

  root 'home#index'

  post 'home/save', to: 'home#save'

  get 'home/save'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
