class RecipesController < ApplicationController

	def index
		@recipes = Recipe.all
	end

	def show 
		@recipe = Recipe.find(params[:id])
	end

	def new 
		@recipe = Recipe.new
	end

	def search
		redirect_to root
	end

	def create
		if recipe_params[:vegan_vegetarian] == 1
			recipe_params[:vegan_vegetarian] = true
		else
			recipe_params[:vegan_vegetarian] = false
		end
		@recipe = Recipe.new(recipe_params)
		
		@recipe.save
	
		redirect_to new_ingredient_path(id: @recipe.id)
	end


	def like
		@recipe = Recipe.find(params[:id])
		@id = @recipe.id
		if @recipe.number_of_likes == nil
			@recipe.number_of_likes = 1
		else
			@recipe.number_of_likes += 1
		end
		@recipe.save
		redirect_to recipe_path(@id)
	end 
	
	private
	def recipe_params
		params.require(:recipe).permit(:name, :description, :calories, :contains_allergens, :level_of_difficulty, :vegan_vegetarian, :price, :steps).merge(user_id: current_user.id, number_of_likes: 0)
	end

	def ing_params
		params.require(:ingredient).permit(:name)
	end

end
