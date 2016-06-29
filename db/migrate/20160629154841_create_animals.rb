class CreateAnimals < ActiveRecord::Migration
  def change
    create_table :animals do |t|
      t.string :name, null: false
      t.integer :age
      t.string :race, null: false
      t.belongs_to :zoo

      t.timestamps null: false
    end
  end
end
