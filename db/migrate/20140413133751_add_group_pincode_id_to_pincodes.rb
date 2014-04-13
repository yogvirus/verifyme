class AddGroupPincodeIdToPincodes < ActiveRecord::Migration
  def change
    add_column :pincodes, :pincode_group_id, :integer
  end
end
