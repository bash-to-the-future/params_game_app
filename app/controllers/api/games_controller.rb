class Api::GamesController < ApplicationController
  def yer_name
    @my_name = params["name"].upcase
    render 'yer_name.json.jb'
  end

  def start_a
    @name = params["name"]

    if @name[0].upcase == "A"
      @message = "Hey, your name starts with the first letter of the alphabet!"
    end

    render 'start_a.json.jb'
  end

  def guess_query
    @guess = params[:guess].to_i
    hidden_number = 42

    if @guess > hidden_number
      @message = "Woah, too high. Go Lower!"
    elsif @guess < hidden_number
      @message = "Come up a bit, guess higher next time."
    else
      @message = "...and that number was just right."
    end

    render 'guess_query.json.jb'
  end
end
