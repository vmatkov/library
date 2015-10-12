class CategoriesController < ApplicationController
def index
		@categories = Category.all
		
	end
	def show
		@category = Category.find(params[:id])
	end
	def edit
		@category = Category.find(params[:id])
	end
	def update
		@category = Category.find(params[:id])
		if @category.update_attributes(category_params)
			redirect_to(:action => 'show', :id => @category.id)
		else render 'edit'
		end
	end
	def new
		@category = Category.new
		@books = Book.all
	end
	def create
		@category = Category.new(category_params)
		if @category.save
			redirect_to '/categories' #if saved, redirect us to home page
		else
			render 'new'
		end
	end
	private
	def category_params
		params.require(:category).permit(:name)
	end
end
