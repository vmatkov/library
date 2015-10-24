require 'rails_helper'

RSpec.describe "books/index", type: :view do
  context "with 2 books" do
    before(:each) do
      assign(:books, [
        Book.create!(:name => "Distorzija", :category_id => 0),
        Book.create!(:name => "Fantasy land", :category_id => 0)
      ])
    end

    it "displays both books" do
      render

      expect(rendered).to match /Distorzija/ and /Other/ #creating two books that display on index page.
      expect(rendered).to match /Fantasy/ and /Other/ #they must contain book name and category
    end
  end
end
