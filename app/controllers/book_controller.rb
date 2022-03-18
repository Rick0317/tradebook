class BookController < ApplicationController
  def index
    @books = Book.includes(:user).order("created_at DESC")
  end
end
