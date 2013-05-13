class GreetingsController < ApplicationController
  def hello
    @name = session[:person]
    @color = session[:color]
  end

  def introduce
    session[:person] = params[:person]
    session[:color] = params[:color]
    redirect_to "http://localhost:3000/hi"
  end

  def goodbye
    reset_session
    redirect_to "http://localhost:3000/hi"
  end
end
