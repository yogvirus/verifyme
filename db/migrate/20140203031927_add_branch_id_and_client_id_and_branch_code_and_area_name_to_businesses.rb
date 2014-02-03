class AddBranchIdAndClientIdAndBranchCodeAndAreaNameToBusinesses < ActiveRecord::Migration
  def change
    add_column :businesses, :branch_id, :integer
    add_column :businesses, :client_id, :integer
    add_column :businesses, :branch_code, :string
    add_column :businesses, :area_name, :string
  end
end
