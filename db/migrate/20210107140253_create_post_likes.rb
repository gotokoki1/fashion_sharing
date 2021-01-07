class CreatePostLikes < ActiveRecord::Migration[6.0]
  def change
    create_table :post_likes do |t|
      t.timestamps
      t.references :user,            foreign_key: true
      t.references :post,            foreign_key: true
    end
  end
end
