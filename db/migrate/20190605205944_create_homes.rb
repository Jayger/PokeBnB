class CreateHomes < ActiveRecord::Migration[5.2]
  def change
    create_table :homes do |t|
      t.string :name
      t.string :description
      t.string :address
      t.string :img_url
      t.integer :price
      t.integer :city_id

      t.timestamps
    end
  end
end
