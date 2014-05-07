Rails.application.routes.draw do

  resources :home
  resources :screencasts

  scope :api do
      get "/screencasts(.:format)" => "screencasts#index"
      get "/screencasts/:id(.:format)" => "screencasts#show"
  end

  root "home#index"

end
