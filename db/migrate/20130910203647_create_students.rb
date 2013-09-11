class CreateStudents < ActiveRecord::Migration
  def change
    create_table :students do |t|
      t.string :name
      t.integer :age
      t.string :address
      t.date :birthday
      t.integer :level_id

      t.timestamps
    end
  end
end
