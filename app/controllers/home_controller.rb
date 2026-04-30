class HomeController < ApplicationController
  def index
    @recipes = Recipe.includes(:ingredients).take(5)
  end

  def aindex
  end

  def uindex
  end

  def urecipes
    @recipes = Recipe.includes(:ingredients).where(user_id: session[:user_id])
  end
end