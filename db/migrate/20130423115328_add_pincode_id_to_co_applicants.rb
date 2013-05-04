class AddPincodeIdToCoApplicants < ActiveRecord::Migration
  def change
    add_column :co_applicants, :pincode_id, :integer
  end
end
