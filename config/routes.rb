Rails.application.routes.draw do
  resources :tarefas
  root 'tarefas#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
