class RecipesController < ApplicationController

	def index
		@search_term = params[:search] || "cheese"
		@recipes = Recipe.for(@search_term)
		@search_type = "meat"
		respond_to do |format|
			format.html {}
			format.js
		end
	end

	def ingredients
		# TODO: Problem with the url. I get it shortened by the API...
		@page = params[:url] || "http://food2fork.com/view/Mac_and_Cheese_with_Roasted_Chicken_Goat_Cheese_and_Rosemary/e7fdb2"

		@why = Recipe.test(10)
		@ingr = Recipe.ingredients(@page)

	end
end
