class RenameRefNoFromCoApplicantBusinesses < ActiveRecord::Migration
  def up
   rename_column :co_applicant_businesses , :applicant_ref_no,  :application_ref_no
  end

  def down
  end
end
