class CustomersOfficeAssets < ActiveRecord::Migration
  def up
   create_table :customers_office_assets, :id => false do |t|
    t.integer :customer_id
    t.integer :office_asset_id
   end
  end

  def down
  end
end
