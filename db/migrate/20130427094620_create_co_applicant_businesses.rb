class CreateCoApplicantBusinesses < ActiveRecord::Migration
  def change
    create_table :co_applicant_businesses do |t|
      t.string :applicant_ref_no
      t.string :agency_name
      t.boolean :document_required
      t.string :fh_code
      t.string :applicant_name
      t.date :date_of_birth
      t.string :landmark
      t.text :address
      t.string :country
      t.string :city
      t.string :state
      t.integer :pincode_id
      t.string :slug
      t.float :latitude
      t.float :longitude
      t.string :status
      t.integer :co_applicant_id
      t.string :company_name

      t.timestamps
    end
  end
end
