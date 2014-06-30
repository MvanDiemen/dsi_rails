class CreateReviewComments < ActiveRecord::Migration
  def change
    create_table :review_comments do |t|
      t.integer :olery_id
      t.integer :review_id
      t.string :data

      t.timestamps
    end
  end
end
