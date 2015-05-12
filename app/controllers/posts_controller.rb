class PostsController < ApplicationController
	before_action :authenticate_user!
	#List out all posts
	def index
		@posts = Post.all
	# Retrieve all the posts data, and store them in the variable @posts
		# render :json => @posts
	end

	def create
			@post = Post.new(post_params)

			if @post.save
				render :json => { message: "saved" }
			else
				render :json => { message: "not saved" }
			end 
	end

	def show 
		# '/posts/1'
		@post = Post.find_by_id(params[:id])

		if @post.nil?
			render :json => {
				message: "Cannot find post with id=#{params[:id]}"
			}
		end
	end

	def highlighted
		@posts = Post.where(:highlighted => true)

		# if @post.nil?
		# 	render :json => {
		# 		message: "Cannot find post with id=#{params[:id]}"
		# 	}
		# end
	end

	def update
		@post = Post.find_by_id(params[:id])

		if @post.nil?
			render :json => {
				message: "Cannot find post with id=#{params[:id]}"
			}
		else
			if @post.update(post_params)
				render :json => { message: "updated" }
			else
				render :json => { message: "not updated" }
			end
		end
	end

	def destroy 
		@post = Post.find_by_id(params[:id])

		if @post.nil?
			render :json => {
				message: "Cannot find post with id=#{params[:id]}"
			}
		else
			if @post.destroy
				render :json => { message: "deleted" }
			else
				render :json => { message: "not deleted"}
			end
		end
	end

	private

	def post_params
		params.require(:post).permit(:title, :content, :category, :highlighted)
	end

# data = {
# 	post: {
# 		title: '',
# 		content: '',
# 		category: ''
# 	}
# }
end
