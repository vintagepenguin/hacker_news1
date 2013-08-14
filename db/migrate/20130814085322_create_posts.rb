class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.string :title
      t.string :post_link
      t.belongs_to :user
      t.timestamps
    end
  end
end
