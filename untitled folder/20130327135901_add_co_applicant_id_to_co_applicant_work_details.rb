class AddCoApplicantIdToCoApplicantWorkDetails < ActiveRecord::Migration
  def change
    add_column :co_applicant_work_details, :co_applicant_id, :integer
  end
end
