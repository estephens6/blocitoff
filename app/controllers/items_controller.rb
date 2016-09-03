class ItemsController < ApplicationController
  
  def new
  end
  
  def create
    @user = User.find(params[:user_id])
    @item = current_user.items.create(item_params)
    if @item.save
      flash[:notice] = "Item was created!"
      redirect_to @user
    else
      flash.now[:alert] = "Alert!!! Unable to create item"
      redirect_to @user
    end
  end
  
  def show
  end
  
  def update
  end
  
def destroy
  @user = User.find(params[:user_id])
  @item = Item.find(params[:id])
  @item.destroy
  if @item.destroy
    flash[:notice] = "Item was completed! Good job!"
    redirect_to @user
  else
    flash.now[:alert] = "Alert!!! Unable to delete item!"
    redirect_to @user
  end
end
  
  
  private
  def item_params
    params.require(:item).permit(:name)
  end
  respond_to do |format|
   format.html
   format.js
  end
end

