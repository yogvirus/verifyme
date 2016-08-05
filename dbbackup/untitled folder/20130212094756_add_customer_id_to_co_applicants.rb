class AddCustomerIdToCoApplicants < ActiveRecord::Migration
  def change
    add_column :co_applicants, :customer_id, :integer
  end
end
