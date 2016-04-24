class AddDifficultyToRecipes < ActiveRecord::Migration
  def change
    add_column :recipes, :level_of_difficulty, :string
  end
end
