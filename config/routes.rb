Rails.application.routes.draw do
  root "welcome#index"

  get '/input', to: "input#index"

  namespace :api do
    namespace :v1 do
      resources :games do
        resources :plays
      end
    end
  end



end
