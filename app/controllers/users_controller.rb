class UsersController < ApplicationController
	# POST/register
	def register
			@user = User.create(user_params)
		if @user.save
			response = {message: 'User has been created successfully'}
			render json: response, status: :created
		else
			render json: @user.errors, status: :bad
		end
	end
	def r_current
		render json: current_user
	end

	private
	def user_params
		params.permit(
			:name,
			:email,
			:password
			)
	end
end
