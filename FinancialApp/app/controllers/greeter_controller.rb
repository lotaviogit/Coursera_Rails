class GreeterController < ApplicationController
  def index
  	@random_names = ["Donald", "Mickey", "Pluto"]
  	@time = Time.now
  	@times_displayed ||= 0
  	@times_displayed += 1
  	# But this won't work...
  	# EVERY NEW REQUEST INITIALIZE THE INSTANCE VARIABLE
  	# TODO: Use Session or on a Database
  end
  def goodbye
  	@random_names = ["Donald", "Mickey", "Pluto"]
  	@time = Time.now
  end
end
