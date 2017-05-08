class CreateLocations < ActiveRecord::Migration[5.0]
  def change
    create_table :locations do |t|
      t.string :city
      t.string :country
      t.string :comment
      t.integer :zipcode
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
