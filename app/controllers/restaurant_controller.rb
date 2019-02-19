class RestaurantController < ApplicationController
	skip_before_action :authenticate_request, :only => [:create, :verify]

	def create
		otp = 1234
		@restaurant = Restaurant.new(poc_contactno: params[:poc_contactno], otp: otp)
		if @restaurant.save 
			render json: "OTP sent", status: :ok
		else
			render json: @restaurant.errors.full_messages
		end
	end
	def index
	end
	def verify
		command = AuthenticateRestaurant.call(params[:otp])

		if command.success?
			render json: { auth_token: command.result }
		else
			render json: { error: command.errors }, status: :unauthorized
		end
	end
	
	def update
		@restaurant = Restaurant.find_by(poc_contactno: params[:id])
		if @restaurant.update(res_name: params[:res_name], poc_name: params[:poc_name], poc_email: params[:poc_email], password_digest: params[:password_digest])
			render json: "Sign up successful"
		else
			render json: "Unsuccessful"
		end
	end
end
