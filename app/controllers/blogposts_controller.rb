class BlogpostsController < ApplicationController

before_action :authenticate_user!

	def index
	   #@user = User.find(params[:user_id])
	    @user = current_user
		@blogposts = User.find(@user.id).blogposts
		render "index"
	end
	
	
	def new
	    @user = current_user
		#@user = User.find(params[:user_id])
		@blogpost = Blogpost.new
	end
	
	
	def show
        @user = current_user
        @post = User.find(current_user).blogposts.find(params[:id])
        #@user = User.find(params[:user_id])	   
	    #@post = User.find(params[:user_id]).blogposts.find(params[:id])
	    render "post"
	end
	
	
	def create
	    User.find(current_user).blogposts.create(blogpost_params)
	#	User.find(params[:user_id]).blogposts.create(blogpost_params)
		redirect_to user_blogposts_path
	end
	
	
	def blogpost_params
		params.require(:blogpost).permit(:blog_post, :blog_title, :user_id)
	end

end
