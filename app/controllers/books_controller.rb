class BooksController < ApplicationController

	def index
    	@books = Book.all
	end

	def new
		@book = Book.new
	end

	def create
		Book.create book_params
		redirect_to '/books'
	end

	def edit
		@book = Book.find params[:id]	
	end

	def update
		@book = Book.find params[:id]
		@book.update book_params
		redirect_to '/books'
	end

	def destroy
		@book = Book.find params[:id]
		@book.destroy
		flash[:notice] = "Successfully deleted #{@book.name}"
		redirect_to '/books'
	end

	private

	def book_params
		params[:book].permit(:title)
	end
end


