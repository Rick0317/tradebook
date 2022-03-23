class BooksController < ApplicationController
  def index
    @books = Book.includes(:user).order("created_at DESC")
  end

  def new 
    if user_signed_in?
      @book = Book.new
    else 
      redirect_to new_user_session_path
    end
  end
  def create
    @book = Book.new(book_params)
    if @book.save
      redirect_to root_path
    else 
      render :new
    end
  end
  def show
    @book = Book.find(params[:id])
  end
  def edit
  end 
  def update
    if @book.update(book_params)
      redirect_to book_path(@book.id)
    else
      render :edit
    end
  end
  def destroy
     @book.destroy
     redirect_to root_path
  end

  private

  def book_params
     params.require(:book).permit(:title, :price,:quality_id).merge(user_id: current_user.id)
  end
end
