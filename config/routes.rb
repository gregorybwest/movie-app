Rails.application.routes.draw do
  get "/actor" => "actors#print_actor"
  get "/movies" => "movies#index"
  get "/movies/:id" => "movies#show"
end




