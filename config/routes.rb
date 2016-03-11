Rails.application.routes.draw do
  root 'museums#index'
  resources :paintings
  resources :artists do
    resources :paintings, only: :index
  end
  resources :museums do
    resources :paintings, only: :index
  end

end
