class CreateSubjects < ActiveRecord::Migration
  def change
    create_table :subjects do |t|
      t.string :subject_name
      t.string :description
      t.integer :grades_id

      t.timestamps
    end
  end
end
