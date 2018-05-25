class CreateReviews < ActiveRecord::Migration
  def change
    create_table :reviews do |t|
      t.string :product_id
      t.integer :user_id
      t.string :description
      t.integer :rating
      t.timestamps null: false
      t.references :product, foreign_key: true
      t.references :user, index: true, foreign_key: true
    end
    add_index :reviews, :product_id
  end
end