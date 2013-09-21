class AddDepartmentIdToCoApplicantBusinesses < ActiveRecord::Migration
  def change
    add_column :co_applicant_businesses, :department_id, :integer
  end
end
