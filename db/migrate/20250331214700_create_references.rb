class CreateReferences < ActiveRecord::Migration[8.0]
  def change
    create_table :references do |t|
      t.string :title
      t.text :description
      t.string :company
      t.date :start_date
      t.string :duration
      t.string :budget

      t.timestamps
    end
  end
end
