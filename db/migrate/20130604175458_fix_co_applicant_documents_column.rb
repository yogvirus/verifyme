class FixCoApplicantDocumentsColumn < ActiveRecord::Migration
  def up
   rename_column :co_applicant_documents, :co_applicant_servey_id , :co_applicant_id
  end

  def down
  end
end
