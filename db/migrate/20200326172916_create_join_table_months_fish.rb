class CreateJoinTableMonthsFish < ActiveRecord::Migration[6.0]
  def change
    create_join_table :months, :fish do |t|
      
    end
  end
end
