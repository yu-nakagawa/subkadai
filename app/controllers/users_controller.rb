class UsersController < ApplicationController
  
  def show
    @user=User.find(params[:id])
    @microposts = @user.microposts
  end
  
  def new
  end
  
end
