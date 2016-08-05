class CreateCoApplicantDocuments < ActiveRecord::Migration
  def change
    create_table :co_applicant_documents do |t|
      t.integer :co_applicant_servey_id
      t.string :photo_file_name
      t.string :photo_content_type
      t.integer :photo_file_size

      t.timestamps
    end
  end
end
