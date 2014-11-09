class Admin::DashboardController < ApplicationController

	def show
		@posts = Post.all
		@post = Post.new

		@users = User.all
	end

end
