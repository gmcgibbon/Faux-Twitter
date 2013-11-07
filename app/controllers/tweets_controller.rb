class TweetsController < ApplicationController
	def index
		@tweets = Tweet.order('id DESC')
		@tweet = Tweet.new
	end

	def create
		index

		if @tweet.save
			redirect_to :action => :index
		else
			@tweet.update_attributes params[:tweet]
			render :action => :index
		end
    end

    def delete

		@tweet = Tweet.find(params[:id])

		@tweet.destroy
		redirect_to :action => :index
    end

	def display
		@tweet = Tweet.find(params[:id])
	end
end
