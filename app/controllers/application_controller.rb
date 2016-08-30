class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
#  before_filter :authenticate_user!
#  before_action :authenticate_user!


  private

  # Overwriting the sign_out redirect path method
  def after_sign_out_path_for(resource_or_scope)
    welcome_index_url
  end
  
    protected
  def authenticate_user!(options={})
    if user_signed_in?

      super(options)
    else
      redirect_to welcome_index_url, :notice => 'log in please'
      ## if you want render 404 page
      ## render :file => File.join(Rails.root, 'public/404'), :formats => [:html], :status => 404, :layout => false
    end
  end
end

