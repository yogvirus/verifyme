class AssetsCustomers < ActiveRecord::Migration
  def up
    create_table :assets_customers, :id => false do |t|
     t.integer :asset_id
     t.integer :customer_id
    end
  end

  def down
  end
end
