Rails.application.routes.draw do
  get "/actor" => "actors#print_actor"
  get "actor/:id" => "actors#print_actor"
  post "/actor" => "actors#print_actor"
  get "/movies" => "movies#index"
  get "/movies/:id" => "movies#show"
  
end




