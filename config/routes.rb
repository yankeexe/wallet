Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'money#index'
  resources :money
  get 'addmoney' => 'money#addmoney'
  
end
