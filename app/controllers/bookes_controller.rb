class BookesController < ApplicationController
  def index
    @bookes =Book.all
    
    @book=Book.new
  end

  def create
    @book = Book.new(book_params)
    if @book.save
      flash[:notice]="Book was successfully created."
      redirect_to "/bookes/#{book.id}"
    else
      redirect_to "/bookes"
    end
  end


  def show
    @book = Book.find(params[:id])
  end

  def edit
    @book = Book.find(params[:id])
  end

  def update
    book=Book.find(params[:id])
    if book.update(book_params)
      flash[:notice]="Book was successfully created."
      redirect_to "/bookes/#{book.id}"
    end
  end

  def destroy
    book = Book.find(params[:id])
    book.destroy
    redirect_to "/bookes"
  end

  private

  def book_params
    params.permit(:title, :body)
  end
end
