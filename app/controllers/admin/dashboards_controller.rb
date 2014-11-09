class Admin::DashboardsController < ApplicationController

	def show
		@posts = Post.all
		@post = Post.new
		@users = User.all
    @categories = Category.all
	end

end
