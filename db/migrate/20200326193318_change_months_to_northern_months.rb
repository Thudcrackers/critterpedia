class ChangeMonthsToNorthernMonths < ActiveRecord::Migration[6.0]
  def change
    rename_table :months, :northern_months
  end
end
