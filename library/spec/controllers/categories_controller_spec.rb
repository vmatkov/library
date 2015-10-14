require 'rails_helper'

RSpec.describe CategoriesController, type: :controller do
	describe "GET #index" do
    it "responds successfully with an HTTP 200 status code" do
      get :index
      expect(response).to be_success
      expect(response).to have_http_status(200)
    end

    it "renders the index template" do
      get :index
      expect(response).to render_template("index")
    end

    it "loads all of the books into @books" do
      category1, category2 = Category.create!, Category.create!
      get :index

      expect(assigns(:categories)).to match_array([category1, category2])
    end
  end
end
