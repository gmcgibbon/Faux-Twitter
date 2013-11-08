class TweetsController < ApplicationController
	def index
		@tweets = Tweet.order('id DESC')
		@tweet = Tweet.new
	end

	def create
		index

		@tweet.update_attributes params[:tweet]

		if @tweet.save
			flash[:success] = "Posted!"
			redirect_to :action => :index
		else
			flash.now[:fail] = "Error!"
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
