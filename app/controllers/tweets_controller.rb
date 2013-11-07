class TweetsController < ApplicationController
	def index
		@tweets = Tweet.all
		@tweet = Tweet.new
	end

	def create
		@tweet = Tweet.new params[:tweet]
		if @tweet.save
			redirect_to :action => :index
    	end
    end

	def display
		@tweet = Tweet.find(params[:id])
	end
end
