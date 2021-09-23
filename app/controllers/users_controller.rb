class UsersController < ApplicationController
  def index
     @user = User.find(params[:id])
     @users = Name.find(params[:id]).reverse_order
  end
  
end
