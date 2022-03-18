class BookController < ApplicationController
  def index
    @books = Book.includes(:user).order("created_at DESC")
  end

  def new 
    @book = Book.new
  end

  def create
    @book = Book.create(book_params)
    if @book.save
      redirect_to root_path
    else 
      render :new
    end
  end

  private

  def book_params
     params.require(:book).permit(:title, :price,)
  end
end
