class CreateReviewsTable < ActiveRecord::Migration
  def change
    create_table :reviews do |t|
      t.integer :product_id
      t.integer :user_id
      t.text :description
      t.integer :rating
      t.datetime :createdat
      t.datetime :updatedat

      t.timestamps null: false
    end
  end
end
