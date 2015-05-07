class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
    	t.string :ID
    	t.string :content
    	t.string :Post_id
    	t.string :Tags
      t.timestamps null: false
    end
  end
end
