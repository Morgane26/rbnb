class CreateMeals < ActiveRecord::Migration[5.1]
  def change
    create_table :meals do |t|
      t.references :user, foreign_key: true
      t.string :name
      t.text :description
      t.integer :calories
      t.integer :price
      t.string :photo
      t.integer :stock
      t.date :date

      t.timestamps
    end
  end
end
