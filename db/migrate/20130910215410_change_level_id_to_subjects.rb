class ChangeLevelIdToSubjects < ActiveRecord::Migration
  def change
  	change_column :subjects, :level_id, :integer
  end
end
