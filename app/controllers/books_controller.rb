class BooksController < ApplicationController
  before_action :set_book, only: [:show, :edit, :update, :destroy]
  before_action :get_types
  before_action :get_areas

  respond_to :html

  def index
    @books = Book.search(params[:title])
    respond_with(@books)
  end

  def show
    respond_with(@book)
  end

  def new
    @book = Book.new
    respond_with(@book)
  end

  def edit
  end

  def create
    @book = Book.new(book_params)
    @book.save
    respond_with(@book)
  end

  def update
    @book.update(book_params)
    respond_with(@book)
  end

  def destroy
    @book.destroy
    respond_with(@book)
  end

  private
    def set_book
      @book = Book.find(params[:id])
    end

    def book_params
      params.require(:book).permit(:title, :author, :description, :publication_date, :isbn, :type_id, :area_id)
    end
    
    def get_types
      @types = Type.all.map{|type| [type.name, type.id]}
    end
    
    def get_areas
      @areas = Area.all.map{|area| [area.name, area.id]}
    end
end
