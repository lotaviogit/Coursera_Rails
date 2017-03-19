class Recipe < ActiveRecord::Base
	include HTTParty
	require 'net/http'

	ENV['FOOD2FORK_KEY'] = "a7eb24a8b08fa6313c341c5a31dfb6ed"
	key_value = ENV['FOOD2FORK_KEY']
	hostport = ENV['FOOD2FORK_SERVER_AND_PORT'] || 'www.food2fork.com'

	base_uri 'http://food2fork.com/api'
	default_params key: key_value
	format :json


	def self.for term
		get("/search", query: {q: term})['recipes']
	end

	def self.ingredients path
		# Get the correct string for the uris
		url = path.match(/.*(food2fork.com)(\/.*)/)[1]
		complement = path.match(/.*(food2fork.com)(\/.*)/)[2]

		# Get the webpage text(html)
		# IMPORTANT: As I only have access to the shortened URL, I need to
		# get the response of the actual URL
		location = Net::HTTP.get_response(url, complement)['location']

		url_2 = location.match(/.*(food2fork.com)(\/.*)/)[1]
		complement_2 = location.match(/.*(food2fork.com)(\/.*)/)[2]
		
		source = Net::HTTP.get(url_2, complement_2)

		# Get the strings with all the ingredients
		temp = source.split("\n")

		# List to store the ingredients
		ingredients = []

		# Go through each line on temp
		temp.each do |s|
			line = s.strip
		    if (line =~ /^<li.*=\"ingredients\">/)
		    	# Create a list of matches part so I can get only the ingredients text
		    	# ingredients.push(line.match(/^<li itemprop=\"ingredients\">(.*)<\/li>/)[1])
		    	# Testing the same matching as on the if statement
		    	if line.match(/^<li.*=\"ingredients\">(.*)<\/li>/) != nil
		    		ingredients.push(line.match(/^<li.*=\"ingredients\">(.*)<\/li>/)[1])
		    	end
		    end
		end

		return ingredients
	end

	# WORKS
	def self.test x
		return x*10
	end
end
