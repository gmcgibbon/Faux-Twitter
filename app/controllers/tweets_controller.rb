class TweetsController < ApplicationController
	def index
		@tweets = Tweet.order('id DESC')
		@tweet = Tweet.new
	end

	def create
		index

		@tweet.update_attributes params[:tweet]

		if @tweet.save
			redirect_to :action => :index
		else
			render :action => :index
		end
    end

	def display
		@tweet = Tweet.find(params[:id])
	end
end
