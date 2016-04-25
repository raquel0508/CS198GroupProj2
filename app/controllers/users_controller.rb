class UsersController < ApplicationController
  def new
  end

  def index
  	@recipes = Recipe.where(user_id: current_user.id)
  	@friend_recipes = []
  	@friends = Friend.where(friend_id: current_user.id, is_pending: false)
  	@friends.each do |friend|
  		@recipes_friend = Recipe.where(user_id: friend.user_id)
  		@friend_recipes = @friend_recipes + @recipes_friend
  	end	
  end
end
