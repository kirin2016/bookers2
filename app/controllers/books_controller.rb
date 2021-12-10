class BooksController < ApplicationController
  
  def create
    @books = Book.all
    @book = Book.index(books_params)
    @book.user_id = current_user.id
    @book.save
    redirect_to books_path
  end

  def index
    @books = Book.all
  end

  def show
  end

  def destroy
  end
  
  
  private

  def bookes_params
    params.require(:books).permit(:title, :body)
  end
  
end
