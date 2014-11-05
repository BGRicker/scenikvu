class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|

      t.timestamps
      t.string :title
      t.string :description
      t.text :content
      t.integer :category_id

    end

    add_index :posts, :category_id
  end
end
