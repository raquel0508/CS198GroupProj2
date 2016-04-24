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

	def create
		@recipe = Recipe.new(recipe_params)
		@ingredients
		if @recipe.save
			@recipe.user_id = current_user.id
			@recipe.name = :name
			@recipe.description = :description
			@recipe.calories = :calories
			@recipe.number_of_likes = :number_of_likes
			@recipe.contains_allergens = :contains_allergens
			@recipe.level_of_difficulty = :level_of_difficulty
			@recipe.vegan_vegetarian = :vegan_vegetarian
			@recipe.price = :price
			@recipe.save
		end
		#redirect_to #your recipes
	end

	def find
	end

	def like
		@recipe = Recipe.find(params[:id])
		@id = @recipe.user_id
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
		params.require(:recipe).permit(:name)
	end

	def ing_params
		params.require(:ingredient).permit(:name)
	end

end
