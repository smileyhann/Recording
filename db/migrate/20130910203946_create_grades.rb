class CreateGrades < ActiveRecord::Migration
  def change
    create_table :grades do |t|
      t.string :grade
      t.integer :students_id
      t.integer :subjects_id

      t.timestamps
    end
  end
end
