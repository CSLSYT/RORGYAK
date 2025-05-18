class CreateMessages < ActiveRecord::Migration[8.0]
  def change
    create_table :messages do |t|
      t.string :name
      t.string :email
      t.string :phone
      t.string :caption
      t.text :message

      t.timestamps
    end
  end
end
