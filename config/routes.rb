CvBe::Application.routes.draw do
  
  resources :screams
  resources :instagram_services
  resources :twitter_services


  root to: "cms/pages#index"
  resources :pages
  namespace :cms do
    root to: "pages#index"
    resources :base
    resources :pages
    resources :screams    
    resources :categories
  end
end
