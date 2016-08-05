class RenamePinCodeToPincodeId < ActiveRecord::Migration
  def up
     rename_column :co_applicants, :pin_code, :pincode_id
     change_column :co_applicants, :pincode_id, :integer 
  end

  def down
  end
end
