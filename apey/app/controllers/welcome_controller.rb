class WelcomeController < ApplicationController
	require 'httparty'

	def index
		secret_key  = ENV['WELCOME_KEY']

		@response = 
		HTTParty.get "https://thibaultcha-fortunecow-v1.p.mashape.com/random",
  		headers:{
    	"X-Mashape-Key" => ENV['welcome_key'],
    	"Accept" => "text/plain"
  	}
	end


end