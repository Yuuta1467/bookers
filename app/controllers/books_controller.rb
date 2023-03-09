class BooksController < ApplicationController

  def index
     @book = Book.all
  end

  def create
    @book = Book.all(book_params)
    @book.save
    redirect_to book_path(@book.id)
  end

  def show
  end

  def edit
  end

  private

  def book_params
    params.require(:book).permit(:title, :body)
  end
end





