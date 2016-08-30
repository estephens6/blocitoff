class UsersController < ApplicationController
#  before_filter :authenticate_user!

  
  def show
    @user = User.find(params[:id] || current_user.id)
#    @items = @user.items
  end



#end


#before_filter :check_has_access  
#before_action send_to "welcome_index" if @user == 'nil'

  
#  if current_user.id = nil
#        redirect_to welcome_index
#    else
#    @user = User.find(params[:id] || current_user.id)
#  end
  
  
#  def show

#    @user = User.find(params[:id] || current_user.id)
#    @user = current_user.id ? current_user.id : nil


#    @items = @user.items
#  end
  
#  if @user == nil then redirect_to "welcome#index" end
  
  









#
#  protected
#  def check_has_access
#    if (User.find(params[:id]) || current_user.id) == nil
#      redirect_to "/welcome/index"
#    else
#      redirect_to "/users/show"
#    end
#  end

end
