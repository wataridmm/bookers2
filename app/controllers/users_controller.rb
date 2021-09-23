class UsersController < ApplicationController
  def index
     @user = User.find(params[:id])
     @users = @users.name.find(params[:name]).reverse_order
  end

end
