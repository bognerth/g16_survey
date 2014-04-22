G16Survey::Application.routes.draw do
  
  resources :ratings


  resources :answers


  resources :questions


  resources :surveys


  root :to => 'pages#index'  
  resources :pages 


end
