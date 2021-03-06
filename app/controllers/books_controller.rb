class BooksController < ApplicationController
	def index
		@books = Book.all
	end
	def show
		@book = Book.find(params[:id])
	end
	def edit
		@book = Book.find(params[:id])
		@category = Category.all
	end
	def update
		@book = Book.find(params[:id])
		if @book.update_attributes(book_params)
			redirect_to(:action => 'show', :id => @book.id)
		else render 'edit'
		end
	end
	def destroy
    	Book.find(params[:id]).destroy
    	flash[:success] = "Book deleted"
    	redirect_to books_path
  	end
	def new
		@book = Book.new
		@category = Category.all
	end
	def create
		@book = Book.create(book_params)
		if @book.save
			redirect_to '/books' #if saved, redirect us to home page
		else
			if @book.errors.any?
				flash[:error] = @book.errors.full_messages
				redirect_to books_new_path
			end
		end
	end
	private
	def book_params
		params.require(:book).permit(:name, :author, :year, :category_id)
	end
end
