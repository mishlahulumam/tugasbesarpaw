class UsersController < ApplicationController
	def index
		@users = User.all
	end

	def show
		@user = User.find(params[:id])
	end

	def new
		@user = User.new
	end

	def create
		if account_signed_in?
			if current_account.status==1
				@user = User.new(getParams)
			end
		else
			@user = User.new(getParams.merge(:status => 0))
		end
		if @user.save
			redirect_to user_path(@user.id)
		else
			render "new"
		end
	end

	def edit
		@user = User.find(params[:id])
	end

	def update
		@user = User.find(params[:id])
		@user.update(getParams)
		path = users_path
		role = current_account.status
		if role=='1'
			path = dashboard_path
		end
		redirect_to user_path(@user.id)
	end

	def destroy
		@user = User.find(params[:id])
		@user.destroy
		redirect_to users_path
	end

	def dashboard
	end

	private
	def getParams
		params.require(:user).permit(:username, :nama, :password, :status)
	end
end