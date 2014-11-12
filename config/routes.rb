Rails.application.routes.draw do
  root 'pages#main'
  resources :wishes
end
