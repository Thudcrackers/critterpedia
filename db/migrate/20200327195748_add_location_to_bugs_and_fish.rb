class AddLocationToBugsAndFish < ActiveRecord::Migration[6.0]
  def change
    add_column :bugs, :location, :string
    add_column :fish, :location, :string
  end
end
