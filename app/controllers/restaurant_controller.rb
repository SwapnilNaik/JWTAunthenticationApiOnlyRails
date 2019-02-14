class RestaurantController < ApplicationController
	def registerOTP
		otp = 1234
		@rest = Restaurant.new(poc_contact_no: params[:contactno], otp: otp)
		if
			render json: "OTP has been sent", status: :ok
		else
			render json: @rest.errors.full_messages
		end
	end

	def verifyOTP 
		
	end

end
