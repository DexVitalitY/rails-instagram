class AddHightlightedToPosts < ActiveRecord::Migration
  def change
  	add_column :posts, :highlighted, :boolean
  end
end
