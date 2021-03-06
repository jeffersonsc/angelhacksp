class Api::V1::UsersController < ApplicationController
	respond_to :json
	before_action :authenticate_with_token!, only: [:update, :destroy, :show]

	def show
		respond_with current_user
	end

	def create
		user = User.new(user_params)
		if user.save
			render json: user, status: 200, location: [:api, user]
		else
			render json: {errors: user.errors}, status: 422
		end
	end

	def update
		user = current_user
		if user.update(user_params)
			render json: user, status: 200, location: [:api, user]
		else
			render json: {errors: user.errors}, status: 422
		end
	end

	private

	def user_params
		params.require(:user).permit(:nome, :email, :password, :password_confirmation)
	end
end
