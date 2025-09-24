class BooksController < ApplicationController
  before_action :set_book, only: [:show, :update, :destroy]

 
  def index
    @books = Book.all
    render json: @books
  end


  def show
    render json: @book
  end

 
  def create
    @book = Book.new(book_params)
    if @book.save
      render json: @book, status: :created
    else
      render json: @blok.errors, status: :unprocessable_entity
    end
  end

  
  def update
    if @book.update(book_params)
      render json: @book
    else
      render json: @book.errors, status: :unprocessable_entity
    end
  end

 

 def destroy
  if @book.destroy
    render json: { message: "Book deleted successfully!" }, status: :ok
  else
    render json: { error: "Failed to delete Book" }, status: :unprocessable_entity
  end
 end


 def count_ids
    total_ids = Book.count  # counts all records
    render json: { total_ids: total_ids }
  end


  def custom_fields
    if params[:fields].present?
      fields = params[:fields].split(',').map(&:strip)
      render json: Book.select(fields)
    else
      render json: Book.all
    end
  end  


  private

  def set_book
    @book = Book.find(params[:id])
  end

  def book_params
  if params[:book].present?
    params.require(:book).permit(:name, :pages, :author, :price)
  else
    params.permit(:name, :pages, :author, :price)
  end
end

end
