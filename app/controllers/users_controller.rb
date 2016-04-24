class UsersController < ApplicationController
  def new
  end

  def index
  	@recipes = Recipe.all
  end
end
