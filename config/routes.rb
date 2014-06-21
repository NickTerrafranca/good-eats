Rails.application.routes.draw do
root 'restaurants#index' # must display 10 most recent restaurants
resources :restaurants do
  resources :reviews
  end
end
