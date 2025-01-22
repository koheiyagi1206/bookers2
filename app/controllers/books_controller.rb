class BooksController < ApplicationController

  def create
    @book = Book.new(book_params)
    @book.user_id = current_user.id
    @book.save
    redirect_to book_path(@book)
  end

  def index
    @book = Book.new
    @books = Book.all

    @user = User.find(current_user.id)
  end

  def show
    @book_new = Book.new
    @book = Book.find(params[:id])
    @user = User.find(@book.user_id)
  end

  private
    def book_params
      params.require(:book).permit(:title, :body)
    end

end
