class CreateProperties < ActiveRecord::Migration[5.1]
  def change
    create_table :properties do |t|
      t.string :type_of_lister
      t.string  :city
      t.string :property_type
      t.string  :property_location
      t.string  :phone
      t.string  :price
      t.string  :property_size
      t.string :property_status
      t.string  :images_1
      t.string  :image_2
      t.string  :image_3
      t.string  :image_4
      t.string  :image_5
      t.string  :property_description
      t.string  :time
      t.string  :lister
      t.timestamps
    end
  end
end
