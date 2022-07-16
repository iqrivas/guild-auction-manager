class GreetingsController < ApplicationController
  def hello
  end

  def hello_name
    @name = params[:name]
    @favorites = params[:favorites]
    @list = @favorites.split(",")

  end

  def goodbye
  end
end
