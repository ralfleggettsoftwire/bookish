class BooksController < ApplicationController
  def index
    @books = Book.all.order(:title)
  end

  def new
  end

  def create
  end

  def show
    @book = Book.find(params[:id])
  end

  def edit
  end

  def update
  end

  def destroy
  end
end
