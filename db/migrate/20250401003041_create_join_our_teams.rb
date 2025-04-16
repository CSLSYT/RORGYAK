class CreateJoinOurTeams < ActiveRecord::Migration[8.0]
  def change
    create_table :join_our_teams do |t|
      t.string :vnev
      t.string :knev
      t.string :email
      t.string :phone
      t.string :position
      t.string :resume
      t.text :message

      t.timestamps
    end
  end
end
