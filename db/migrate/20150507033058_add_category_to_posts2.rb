class AddCategoryToPosts2 < ActiveRecord::Migration
  def change
  	# add_column :table_name(s), :column_name, :date_type
  	add_column :posts, :category, :string
  	add_column :posts, :language, :string
  end
end
