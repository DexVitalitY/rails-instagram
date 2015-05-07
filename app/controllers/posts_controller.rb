class PostsController < ApplicationController
	#List out all posts
	def index
		@posts = Post.all
	# Retrieve all the posts data, and store them in the variable @posts
		render :json => @posts
	end
end
