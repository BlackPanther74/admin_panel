class ApplicationController < ActionController::Base
  before_action :set_raven_context

  # makes this available in every view
  helper_method :current_user
  helper_method :authorize

  def current_user
    if session[:user_id]
      @user ||= User.find(session[:user_id])
    end
  end

  # this authorizes the user
  def authorize
    if current_user.nil?
      redirect_to login_path, alert: 'You must be logged in to access this page.'
    end
  end

  private

  def set_raven_context
    Raven.user_context(id: session[:current_user_id]) # or anything else in session
    Raven.extra_context(params: params.to_unsafe_h, url: request.url)
  end
end
