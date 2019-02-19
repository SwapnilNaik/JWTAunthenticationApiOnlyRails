class ApplicationController < ActionController::API
	before_action :authenticate_request
  attr_reader :current_restaurant
   
  private

  def authenticate_request
   @current_restaurant = AuthorizeRestApiRequest.call(request.headers).result
   render json: {error: 'Not Authorized'}, status: 401 unless @current_restaurant
  end
end
