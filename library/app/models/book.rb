# encoding: utf-8
class Book < ActiveRecord::Base
	belongs_to :category	
	validates :name, presence: true
	validates :author, presence: true
	validates :year, presence: true
	validates :category_id, presence: true
	def category_name
		category.name if category
	end
end

book = Book.new
book.valid? # => false
book.errors.messages
# => {:name=>["Can't be blank."], :author=>["Can't be blank."], :year=>["Can't be blank."], :category_id=>["Can't be blank."]}

book = Book.new(name: "Harry Potter", author: "J.K. Rowling", year: "2007", category_id: "1")
book.valid? # => true
book.errors.messages # => {}
