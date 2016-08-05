class AddCoApplicationBusinessIdToCoApplicantWorkDetails < ActiveRecord::Migration
  def change
    add_column :co_applicant_work_details, :company_name, :string
    add_column :co_applicant_work_details, :landmark, :string
  end
end
