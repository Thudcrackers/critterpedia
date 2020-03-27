class SouthernMonths < ActiveRecord::Migration[6.0]
  def change
    create_table :southern_months do |t|
      t.string :name

      t.timestamps
    end
  end
end
