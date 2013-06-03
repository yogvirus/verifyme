class FixColumnNameCoApplicantBusiness < ActiveRecord::Migration
  def up
   rename_column :co_applicant_businesses, :co_applicant_id, :customer_id
  end

  def down
  end
end
