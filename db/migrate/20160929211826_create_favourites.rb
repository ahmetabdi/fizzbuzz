class CreateFavourites < ActiveRecord::Migration[5.0]
  def change
    create_table :favourites do |t|
      t.bigint :number, null: false

      t.timestamps
    end
  end
end
