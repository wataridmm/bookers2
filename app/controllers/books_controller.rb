class BooksController < ApplicationController
  def new
    #@book = Book.new
  end

  def create
    @book = Book.new(book_params)
    user_id = current_user.id
    @book.save
    redirect_to book_path(@book.id)
  end

  def index
     # Viewへ渡すためのインスタンス変数に空のモデルオブジェクトを生成する?
    @book = Book.new
    @books = Book.all
    
  end

  def show
    
  end

  def destroy
  end

  private
  def book_params
    params.require(:book).permit(:title, :body)
  end
end
