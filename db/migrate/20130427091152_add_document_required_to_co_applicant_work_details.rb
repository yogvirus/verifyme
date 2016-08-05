class AddDocumentRequiredToCoApplicantWorkDetails < ActiveRecord::Migration
  def change
    add_column :co_applicant_work_details, :document_required, :boolean
  end
end
