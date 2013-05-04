class CreateCoApplicantBusinessDocuments < ActiveRecord::Migration
  def change
    create_table :co_applicant_business_documents do |t|
      t.integer :co_applicant_business_id
      t.integer :co_applicant_work_detail_id
      t.string :photo_file_name
      t.string :photo_content_type
      t.integer :photo_file_size

      t.timestamps
    end
  end
end
