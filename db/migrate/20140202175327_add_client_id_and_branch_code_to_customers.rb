class AddClientIdAndBranchCodeToCustomers < ActiveRecord::Migration
  def change
    add_column :customers, :client_id, :integer
    add_column :customers, :branch_code, :integer
  end
end
