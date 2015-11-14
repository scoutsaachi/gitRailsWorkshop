class UserpageController < ApplicationController
	def index
		@users = User.all
	end

	def post_new
		User.create(first_name: params[:first_name], last_name: params[:last_name], age: params[:age])
		redirect_to({controller: "userpage", :action => "index"})
	end
end
