class ApplicationController < ActionController::API
 #before_action :authenticate_request
  attr_reader :current_user

  private

  def current_user
    AuthorizeApiRequest.call(request.headers['X-User-Token']).result
  end
end
