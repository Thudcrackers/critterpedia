class CreateFish < ActiveRecord::Migration[6.0]
  def change
    create_table :fish do |t|
      t.string :name
      t.string :time
      t.integer :value

      t.timestamps
    end
  end
end
