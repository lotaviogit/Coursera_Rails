class Recipe < ActiveRecord::Base
	include HTTParty

	ENV['FOOD2FORK_KEY'] = "a7eb24a8b08fa6313c341c5a31dfb6ed"
	key_value = ENV['FOOD2FORK_KEY']
	hostport = ENV['FOOD2FORK_SERVER_AND_PORT'] || 'www.food2fork.com'

	base_uri 'http://#{hostport}/api'
	default_params key: key_value
	format :json


	def self.for term
		get("/search", q: {q: term})['recipes']
	end
end
