class CreateJobApplications < ActiveRecord::Migration[8.0]
  def change
    create_table :job_applications do |t|
      t.string :name
      t.string :email
      t.string :phone
      t.string :position
      t.string :document
      t.text :message

      t.timestamps
    end
  end
end
