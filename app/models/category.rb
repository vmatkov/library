# encoding: utf-8
class Category < ActiveRecord::Base
	has_many :books
	validates_associated :books
	validates :name, presence: true
end

category = Category.new
category.valid? # => false
category.errors.messages
# => {:name=>["Can't be blank."]}

category = Category.new(name: "Romance")
category.valid? # => true
category.errors.messages # => {}
