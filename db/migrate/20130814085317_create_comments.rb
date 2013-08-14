class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.text :reply
      t.belongs_to :user
      t.belongs_to :post
      t.belongs_to :parent, class_name: "Comment", default: nil
      t.timestamps
    end
  end
end
