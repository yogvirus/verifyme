class AssetsServeys < ActiveRecord::Migration
  def up
    create_table :assets_serveys, :id => false do |t|
     t.integer :asset_id
     t.integer :servey_id     
    end
  end

  def down
  end
end
