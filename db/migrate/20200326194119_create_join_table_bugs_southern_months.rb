class CreateJoinTableBugsSouthernMonths < ActiveRecord::Migration[6.0]
  def change
    create_join_table :southern_months, :bugs do |t|
      
    end
  end
end
