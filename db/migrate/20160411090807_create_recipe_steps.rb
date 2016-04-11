class CreateRecipeSteps < ActiveRecord::Migration
  def change
    create_table :recipe_steps do |t|
    	t.belongs_to :recipe, index: true
      t.integer :step_number
      t.string :step_description
      
      t.timestamps null: false
    end
  end
end
