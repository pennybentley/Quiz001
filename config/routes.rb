Rails.application.routes.draw do
  root 'quiz001s#index'
  resources :quiz001s 
  get 'new', to: 'quiz001s#new'
end
