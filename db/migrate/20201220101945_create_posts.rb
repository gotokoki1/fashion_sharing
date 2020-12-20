class CreatePosts < ActiveRecord::Migration[6.0]
  def change
    create_table :posts do |t|
      t.string     :title,           null: false
      t.text       :explanation,     null: false
      t.text       :parchase
      t.integer    :clothes_price
      t.references :user,            foreign_key: true
      t.timestamps
    end
  end
end
