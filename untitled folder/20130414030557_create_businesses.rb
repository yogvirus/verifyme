class CreateBusinesses < ActiveRecord::Migration
  def change
    create_table :businesses do |t|
      t.string :application_ref_no
      t.string :agency_name
      t.boolean :document_required
      t.string :fh_code
      t.string :applicant_name
      t.date :date_of_birth
      t.string :landmark
      t.text :address
      t.string :country_name
      t.string :country_state
      t.string :country_city
      t.integer :pincode_id
      t.string :slug
      t.float :latitude
      t.float :longitude
      t.string :status
      t.integer :customer_id
      t.timestamps
    end
  end
end
