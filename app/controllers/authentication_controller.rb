class AuthenticationController < ApplicationController
 skip_before_action :authenticate_request

 def authenticate
   p params
   command = AuthenticateUser.new(params[:email], params[:password])
   command.call

   if command.success?
     render json: { auth_token: command.result }
   else
     render json: { error: command.errors }, status: :unauthorized
   end
 end
end