require 'rails_helper'

RSpec.describe "books/show", type: :view do
  it "displays the book" do
    assign(:book, Book.new(:name => "Distorzija", :author => "Dusan", :year => "2007", :category_id => "0"))
    render
    expect(rendered).to match /Distorzija/ and /Dusan/ and /2007/ and /Other/ #it has to display all strings
  end
end
