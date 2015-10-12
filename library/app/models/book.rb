class Book < ActiveRecord::Base
	belongs_to :category
	def category_name
		category.name if category
	end
end
