require 'rails_helper'

RSpec.describe "categories/index", type: :view do
  context "with 2 categories" do
    before(:each) do
      assign(:categories, [
        Category.create!(:name => "Other"),
        Category.create!(:name => "Fantasy")
      ])
    end

    it "displays both categories" do
      render

      expect(rendered).to match /Other/
      expect(rendered).to match /Fantasy/
    end
  end
end
