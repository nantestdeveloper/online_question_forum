Rails.application.routes.draw do
  get 'home/index'
  devise_for :users
  resources :questions do
    resources :comments
 end
  resources :comments do
    resources :comments
 end
  root to: "home#index"
  post 'home/new_question'=> 'home#new_question'
  get '/view_question/:id' => 'home#view_question', as: 'view_question' 
  get 'home/add_question'=> 'home#add_question'
  get 'home/question'=> 'home#question'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
