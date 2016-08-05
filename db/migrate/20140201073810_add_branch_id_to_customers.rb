class AddBranchIdToCustomers < ActiveRecord::Migration
  def change
    add_column :customers, :branch_id, :integer
  end
end
