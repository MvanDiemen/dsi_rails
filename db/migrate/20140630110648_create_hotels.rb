class CreateHotels < ActiveRecord::Migration
  def change
    create_table :hotels do |t|
      t.string :name
      t.integer :stars
      t.integer :rooms
      t.integer :beds
      t.string :city
      t.string :zipcode
      t.string :street
      t.integer :olery_id

      t.timestamps
    end
  end
end
