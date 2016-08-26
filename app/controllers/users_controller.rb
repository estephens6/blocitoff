class UsersController < ApplicationController
  def show
    @user = current_user
    @user_name = @user.email
    @items = @user.items
    # @total_items = Item.count
  end

  def root_redirect
    redirect_to user_path(current_user)
  end
end