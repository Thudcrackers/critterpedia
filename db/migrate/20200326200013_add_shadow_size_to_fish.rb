class AddShadowSizeToFish < ActiveRecord::Migration[6.0]
  def change
    add_column :fish, :shadow_size, :integer
  end
end
