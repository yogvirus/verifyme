class CreateCoApplicantVerifications < ActiveRecord::Migration
  def change
    create_table :co_applicant_verifications do |t|
      t.integer :co_applicant_id
      t.integer :user_id
      t.integer :customer_id
      t.integer :tab_id

      t.timestamps
    end
  end
end
