class AddLikesToRecipes < ActiveRecord::Migration
  def change
    add_column :recipes, :number_of_likes, :integer
  end
end
