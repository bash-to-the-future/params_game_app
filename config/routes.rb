Rails.application.routes.draw do
  namespace :api do
    get '/yer_name' => 'games#yer_name'
    get '/starts_with_a' => 'games#start_a'
    get '/guess_query' => 'games#guess_query'
  end
end
