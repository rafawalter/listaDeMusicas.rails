Rails.application.routes.draw do
  root 'now#index', as: 'now_index'

  get 'now/index'

  resources :musicas
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
