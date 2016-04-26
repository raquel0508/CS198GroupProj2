#Title: 
Making Recipe Searching Easier! (And perhaps more competitive, you can be the Top Contributor here!)
#Team Members: 
Simon Cao, Robert Norte, Raquel Layug
#Demo Link: 
recipe.io

#Idea: 
An application where users can submit new recipes and allow others to learn from one another through those recipes. We can also search for recipes corresponding to the types of recipes we specifically want. When one looks for a recipe, the recipes usually aren’t consolidated . We wanted our recipes to be able to be found through many specificities such as desired calorie intake, types of ingredients that are desired, and/or the amount of time you have to cook. Our idea could potentially also make someone well-known for their recipes and help aspiring chefs become successful. We also wanted to include a level of difficulty for each recipe so beginners can choose meals that are easy to make, for example. In addition, we wanted to include the option of eating healthy, yet delicious food.  Users can also add their own recipe creations. 

#Models and Description:
User
* certain Users are Administrators who can ascertain that malicious users don’t put meat ingredients into recipes labelled as vegan, for example
* has username, email, and ability to like recipes!
* is able to login via username/email
* has friends so they can exchange recipes with them
* has their own recipes page that includes recipes that they liked and recipes that they’ve contributed
* can search for recipes
Recipes 
* in a user’s recipe page, they will be given a list of the recipes they’ve liked and another list of the recipe contributions they’ve made
* if a user uses the search bar in the home page to search for a recipe, we will map their keywords to a list of links to recipes. These links will be labeled as recipe names, which they can then click and go to a new page listing all of the information needed to know about the recipe
* Recipes contain the fields `recipe_id`, `user_id`, `name`, `description`, `calories`, `number_of_likes`, `price`, `vegan/vegetarian`, `contains_allergens`, and `level_of_difficulty`
Ingredient
* has list of ingredients and amount of each ingredient needed for the recipe this list of ingredients belongs to
Recipe_Step
* includes duration of time to do the recipe
* has list of steps needed to complete the recipe
Friends
* has friend relations
* There’s also a `is_pending` that makes sure that the other user also wants to be a friend.
* When you send a friend request, it is in pending until the other person accepts the request

Features:
* Admins can answer questions
* Users can log in via username/email
* Users can search recipes based on certain specifics (desired calorie intake, amount of time to make food, vegan friendly, certain ingredients in that recipe)
* Users can create and like recipes
* Users can search for top contributors
* Users are given a webpage listing the recipes they’ve liked and recipes they’ve contributed

Division of Labor:
* Robert - handled the user logins and home page
* Simon - handled the friends, contributors
* Raquel - handled parts of the website that had to do with recipes 

Heroku:
* [Deployed Heroku App] (https://recipeio.herokuapp.com/)