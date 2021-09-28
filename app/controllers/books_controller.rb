class BooksController < ApplicationController
 # def new
    #@book = Book.new
  #end
before_action :correct_user, only: [:edit, :update]

  def create
    @book = Book.new(book_params)
    @book.user_id = current_user.id
    @user = User.find(current_user.id)
    if @book.save
      redirect_to book_path(@book.id), notice: "You have created book successfully."
    else
      @books = Book.all
      render :index
    end
  end

  def index
     # Viewへ渡すためのインスタンス変数に空のモデルオブジェクトを生成する?
    @book = Book.new
    @books = Book.all
    @user = User.find(current_user.id)

  end

  def show
    @book = Book.find(params[:id])
    @user = @book.user
    @book_new = Book.new
  end

  def edit
    @book = Book.find(params[:id])
  end

  def update
    @book = Book.find(params[:id])
    if @book.update(book_params)

     redirect_to book_path(@book.id), notice: "You have updated book successfully."
    else
     render :edit
    end
  end

  def destroy
    @book = Book.find(params[:id])
    @book.destroy
    redirect_to books_path
  end

  private
  def book_params
    params.require(:book).permit(:title, :body, :user_id)
  end

  def correct_user
    @book = Book.find(params[:id])
    @user = @book.user_id
    if @user != current_user.id
      redirect_to(books_path)
    end
  end

end
