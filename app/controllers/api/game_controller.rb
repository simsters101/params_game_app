class Api::GameController < ApplicationController
  def game
    @name = params["name"]
    render 'game.json.jb'
  end
  def guessing_game
    guess = params["guess"].to_i
    correct_number = 79
    if guess == correct_number
      @message = {message: "You got the right number!"}
    elsif guess < correct_number
      @message = {message: "Too low!"}
    elsif guess > correct_number
      @message = {message: "Too high!"}
    end
    render 'guessing_game.json.jb'
  end
end
