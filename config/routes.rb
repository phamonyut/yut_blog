Rails.application.routes.draw do
  
  root 'posts#index'
  
  resources :posts do
    resources :comments
  end
  
  resources :homes, only: [] do
    collection do
      get 'about'
    end
  end

  devise_for :users
  
end
