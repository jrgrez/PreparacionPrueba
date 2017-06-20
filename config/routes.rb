Rails.application.routes.draw do
  root 'pages#x'
  get 'pages/x'
  get 'pages/landing'
  
  post	'pages/save_user'


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
