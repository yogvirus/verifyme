class AddCompanyNameNewToCoApplicantWorkDetails < ActiveRecord::Migration
  def change
    add_column :co_applicant_work_details, :company_name_new, :string
  end
end
