Rails.application.routes.draw do
  get "/actor" => "actors#print_actor"
end
