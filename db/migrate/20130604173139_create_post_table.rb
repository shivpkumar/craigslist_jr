class CreatePostTable < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.string :name
      t.string :description
      t.string :email
      t.string :secret_key
      t.float :price
      t.references :category
      
      t.datetime :created_at
      t.datetime :updated_at
    end
  end
end
