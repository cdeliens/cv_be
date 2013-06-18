CvBe::Application.routes.draw do
  namespace :cms do
    root to: "pages#index"
    resources :base
    resources :pages
    resources :categories
  end
end
