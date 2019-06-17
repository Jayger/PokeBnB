class CreateReservations < ActiveRecord::Migration[5.2]
  def change
    create_table :reservations do |t|
      t.string :name
      t.string :address
      t.float :price
      t.integer :user_id
      t.integer :home_id

      t.timestamps
    end
  end
end
