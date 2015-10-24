class CreateBooks < ActiveRecord::Migration
  def change
    create_table :books do |t|
    	t.string :name
    	t.string :author
    	t.integer :year
    	t.integer :category_id
    end
  end
end
