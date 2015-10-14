require 'rails_helper'

RSpec.describe "books/index", type: :view do
  context "with 2 books" do
    before(:each) do
      assign(:books, [
        Book.create!(:name => "Other"),
        Book.create!(:name => "Fantasy")
      ])
    end

    it "displays both books" do
      render

      expect(rendered).to match /Other/
      expect(rendered).to match /Fantasy/
    end
  end
end
