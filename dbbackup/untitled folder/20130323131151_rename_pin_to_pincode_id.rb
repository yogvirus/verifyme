class RenamePinToPincodeId < ActiveRecord::Migration
  def up
     rename_column :customers, :pin, :pincode_id
     change_column :customers, :pincode_id, :integer 
  end

  def down
  end
end
