Rails.application.routes.draw do
  root "welcome#index"

  get '/input', to: "input#index"
end
