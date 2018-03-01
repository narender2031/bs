Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get '/csv', to: "csv#index"
  post '/csv', to: "csv#upload"
  get '/search', to: "search#index"
  post '/search', to: "search#update"
  get '/result', to: "search#result" 
  get '/insert', to: "entry#index"
  post '/entery', to: "entry#update"
end
