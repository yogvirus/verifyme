class CreateCoApplicants < ActiveRecord::Migration
  def change
    create_table :co_applicants do |t|
      t.string :applicant_name
      t.string :agency_name
      t.boolean :document_required
      t.string :fh_code
      t.string :landmark
      t.string :country_name
      t.string :country_state
      t.string :country_city
      t.string :slug
      t.string :status
      t.integer :customer_id
      t.string :address
      t.float  :latitude
      t.float  :longitude
      t.date :d_o_b
      t.timestamps
    end
  end
end
