class CreateReviews < ActiveRecord::Migration
  def change
    create_table :reviews do |t|
      t.string :review_date
      t.string :source_name
      t.string :title
      t.string :sentiment
      t.string :review_sentiment
      t.string :ratings
      t.string :reviewer
      t.integer :hotel_id
      t.string :review_id

      t.timestamps
    end
  end
end
