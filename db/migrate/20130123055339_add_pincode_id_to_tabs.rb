class AddPincodeIdToTabs < ActiveRecord::Migration
  def change
    add_column :tabs, :pincode_id, :integer
  end
end
