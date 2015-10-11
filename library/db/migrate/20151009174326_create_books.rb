class CreateBooks < ActiveRecord::Migration
  def change
    create_table :books do |t|
    	t.text :name
    	t.text :author
    	t.integer :year
    	t.integer :category
    end
  end
end
