class CreateJoinTableMonthsBugs < ActiveRecord::Migration[6.0]
  def change
    create_join_table :months, :bugs do |t|
      
    end
  end
end
