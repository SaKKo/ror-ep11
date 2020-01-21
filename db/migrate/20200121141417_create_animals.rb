class CreateAnimals < ActiveRecord::Migration[6.0]
  def change
    create_table :animals do |t|
      t.text :name
      t.integer :age
      t.string :type

      t.timestamps
    end
    add_index :animals, :type
  end
end
