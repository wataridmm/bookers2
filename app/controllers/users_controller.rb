class UsersController < ApplicationController
  before_action :correct_user, only: [:edit, :update]

  def index
    @users = User.all
    @user = User.find(current_user.id)
    @book = Book.new
  end

  def edit
    # @user = User.find(params[:id])
    @book = Book.new

  end

  def update
    # @user = User.find(params[:id])

    if  @user.update(user_params)
    redirect_to user_path(@user.id), notice: "You have updated user successfully."
    else
      render :edit
    end
  end

  def show
    @user = User.find(params[:id])
    @books = @user.books.all
    @book = Book.new

  end

private

  def user_params
    params.require(:user).permit(:name, :profile_image, :introduction)
  end

  def correct_user

    @user = User.find(params[:id])
    if @user != current_user
      redirect_to user_path(current_user.id)
    end
    # redirect_to(books_path) if @user != current_user
  end

end
