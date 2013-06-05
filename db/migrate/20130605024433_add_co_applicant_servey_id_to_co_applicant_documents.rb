class AddCoApplicantServeyIdToCoApplicantDocuments < ActiveRecord::Migration
  def change
    add_column :co_applicant_documents, :co_applicant_servey_id, :integer
  end
end
