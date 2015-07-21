class CreateHotels < ActiveRecord::Migration
  def change
    create_table :hotels do |t|
      t.string :name
      t.text :description
      t.string :location
      t.integer :stars
      t.string :website_url
      t.string :booking_url
      t.text :facilites
      t.string :img_url

      t.timestamps null: false
    end
  end
end
