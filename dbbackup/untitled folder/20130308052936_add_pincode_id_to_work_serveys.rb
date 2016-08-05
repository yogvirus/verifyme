class AddPincodeIdToWorkServeys < ActiveRecord::Migration
  def change
    add_column :work_serveys, :pincode_id, :integer
  end
end
