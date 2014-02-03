class AddBranchIdAndClientIdAndBranchCodeAndAreaNameToCoApplicantBusinesses < ActiveRecord::Migration
  def change
    add_column :co_applicant_businesses, :branch_id, :integer
    add_column :co_applicant_businesses, :client_id, :integer
    add_column :co_applicant_businesses, :branch_code, :string
    add_column :co_applicant_businesses, :area_name, :string
  end
end
