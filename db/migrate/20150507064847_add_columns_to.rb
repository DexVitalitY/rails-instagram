class AddColumnsTo < ActiveRecord::Migration
  def change
  	add_column :comments, :ID, :string
  	add_column :comments, :content, :string
  	add_column :comments, :post_id, :string
  	add_column :comments, :tags, :string
  end
end
