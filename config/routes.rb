Rails.application.routes.draw do
  resources :authors, only: %i[show index] do
    resources :posts, only: %i[show index new edit]
  end

  resources :posts, only: %i[index show new create edit update]

  # scope '/admin', module: 'admin' do
  #   resources :stats, only: [:index]
 
  #use namespace instaed of scope when you want to route with a module and use that module's name as the URL prefix
    namespace :admin do
      resources :stats, only: [:index]
    end
  

  root 'posts#index'
end
