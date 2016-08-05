class AddPanNumberAndEmpCodeToCoApplicantBusinesses < ActiveRecord::Migration
  def change
    add_column :co_applicant_businesses, :pan_number, :string
    add_column :co_applicant_businesses, :emp_code, :string
  end
end
