class BooksController < ApplicationController
  def index
    @books = Book.all
  end

  def new
  end

  def show
    @book = Book.find(params[:id])
  end

  def edit
    @book = Book.find(params[:id])
  end
  
  private
  def book_params
    params.require(:book).permit(:title,:body)
  end
  
end
