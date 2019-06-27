class Api::GameController < ApplicationController
  def game
    @name = params["name"]
    render 'game.json.jb'
  end
  def guessing_game
    @guess = params["guess"].to_i
    render 'guessing_game.json.jb'
  end
end
