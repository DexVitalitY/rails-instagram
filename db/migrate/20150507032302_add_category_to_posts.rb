class AddCategoryToPosts < ActiveRecord::Migration
  def change
  	# add_column :table_name(s), :column_name, :date_type
  	add_column :posts, :category, :string
  	add_column :posts, :language, :string


  	# FORGOT TO SAVE FILE AND DID rake db:migrate , once you do that you cannot rake again you have to make a new migration....
  end
end
