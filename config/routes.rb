Rails.application.routes.draw do
  # EXAMPLE HTML ROUTE
  # get "/photos" => "photos#index"

  # EXAMPLE JSON ROUTE WITH API NAMESPACE
  namespace :api do
    get '/game' => 'game#game'
    get '/guessing_game' => 'game#guessing_game'
  end
  #   get "/photos" => "photos#index"
  # end
end
