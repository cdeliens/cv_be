CvBe::Application.routes.draw do
  resources :twitter_services


  root to: "cms/pages#index"
  resources :pages
  namespace :cms do
    root to: "pages#index"
    resources :base
    resources :pages
    resources :categories
  end
end
