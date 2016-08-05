class AddBranchIdAndClientIdAndBranchCodeAndAreaNameToCoApplicants < ActiveRecord::Migration
  def change
    add_column :co_applicants, :branch_id, :integer
    add_column :co_applicants, :client_id, :integer
    add_column :co_applicants, :branch_code, :string
    add_column :co_applicants, :area_name, :string
  end
end
