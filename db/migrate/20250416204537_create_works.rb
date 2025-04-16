class CreateWorks < ActiveRecord::Migration[8.0]
  def change
    create_table :works do |t|
      t.string :name
      t.string :client
      t.string :location
      t.integer :year
      t.integer :value
      t.string :architect
      t.text :description

      t.timestamps
    end
  end
end
