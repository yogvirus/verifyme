class AddPincodeGroupIdToTabs < ActiveRecord::Migration
  def change
    add_column :tabs, :pincode_group_id, :integer
  end
end
